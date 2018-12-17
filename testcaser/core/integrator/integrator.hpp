/**
 * Copyright 2018 Ashar <ashar786khan@gmail.com>
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#ifndef INTEGRATOR_HPP
#define INTEGRATOR_HPP

#include <testcaser/core/integrator/engine/executor.hpp>
#include <testcaser/core/integrator/result.hpp>
#include <testcaser/core/maker/builder.hpp>

namespace testcaser {
/**
 * @brief The namespace that encapsulates all the integrator components
 *
 */
namespace integrator {

/**
 * @brief The VirtualJudge Class use to create a new virtual judge session to
 * run a program
 *
 */

class VirtualJudge {
  size_t memory_limit, time_limit, auto_exit_wait;
  bool auto_exit;
  std::string input, output, binary;

 public:
  /**
   * @brief Construct a new VirtualJudge object. Default time limit is 1 sec,
   * 30s is auto exit time when auto exit is false. If program does not exists
   * in 30s although it has passed its time limit, It will recieve a SIGKILL. It
   * also defaults 256 MB of memory limit. If not explicitly set by the
   * programmer.
   *
   */
  VirtualJudge() {
    input = "N/A";
    output = "N/A";
    binary = "N/A";
    auto_exit = true;
    auto_exit_wait = 30;        // 30 sec
    memory_limit = 256 * 1024;  // 256 MB
    time_limit = 1;             // 1 sec
  }
  /**
   * @brief Set the memory limit to the program to execute.
   *
   * @param kilobyte the allocated memory in KiloBytes. It must be an
   * non-negative integer.
   * @return virtualJudge the current (this) object for builder syntax of
   * construction.
   */
  VirtualJudge set_memory_limit(size_t kilobyte) {
    memory_limit = kilobyte;
    return *this;
  }
  /**
   * @brief Set the time limit to the program to execute.
   *
   * @param ssec the allocated time in second for program to execute. It
   * must be atleast 1 second
   * @return VirtualJudge the current (this) object for builder syntax of
   * construction.
   */
  VirtualJudge set_time_limit(size_t ssec) {
    time_limit = ssec == 0 ? 1 : ssec;
    return *this;
  }
  /**
   * @brief Set the auto exit time limit to the program to execute.
   *
   * @param ssec the allocated time in second for program to execute even after
   * it passed the time limit and auto exit is false. It must be atleast 1
   * second. After this time SIGKILL is bound to kill the child. It must be more
   * than time limit.
   * @return VirtualJudge the current (this) object for builder syntax of
   * construction.
   */
  VirtualJudge set_auto_exit_time_limit(size_t ssec) {
    time_limit = ssec > time_limit ? ssec : time_limit;
    return *this;
  }
  /**
   * @brief Set the input source to provide to the program.
   *
   * @param path the path of the input file to input to the program. This will
   * be generated by the testcaser::maker::TestCaseBuilder
   * @return VirtualJudge the current (this) object for builder syntax of
   * construction.
   */
  VirtualJudge set_input_file(std::string path) {
    input = path;
    return *this;
  }
  /**
   * @brief Set the output from a program to write to the given path.
   *
   * @param path the path to write the output.
   * @return VirtualJudge the current (this) object for builder syntax of
   * construction.
   */
  VirtualJudge set_output_file(std::string path) {
    output = path;
    return *this;
  }
  /**
   * @brief Set the binary to run the program. This binary will run
   *
   * @param path the path to the binary to run and bechmark.
   * @return VirtualJudge the current (this) object for builder syntax of
   * construction.
   */
  VirtualJudge set_binary(std::string path) {
    binary = path;
    return *this;
  }
  /**
   * @brief Set the auto terminate when time or memory limit exceeds.
   *
   * @param terminate should we terminate the program as soon as time or memory
   * limit allocated is exceeded.
   * @return VirtualJudge the current (this) object for builder syntax of
   * construction.
   */
  VirtualJudge set_auto_exit(bool terminate = true) {
    auto_exit = terminate;
    return *this;
  }
  /**
   * @brief Starts the execution of the program after validating if everything
   * is correct.
   *
   * @return Result the object that holds the result of the execution
   * of the binary provided.
   */
  Result execute() {
    if (input == "N/A" || binary == "N/A") {
      throw std::runtime_error(
          "Executing incomplete executor. Make sure you have set input "
          " and binary atleast before calling execute.");
    } else
      return testcaser::internal::executor_engine::for_execution_of(
          binary, input, output, memory_limit, time_limit, auto_exit_wait,
          auto_exit);
  }
};
}  // namespace integrator
}  // namespace testcaser

#endif