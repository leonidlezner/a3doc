# a3doc

The purpose of the a3doc is a technical documentation that complies with ASPICE requirements regarding the documentation and keeps the documentation lightweight so it become a helpful tool for agile development teams.

A3 = Agile, ASPICE, ASIL

## Why a new documentation approach?

Every documentation has an audience. Which audience will have the technical documentation? People who rely on the technical documentation. Developers need it to communicate their work. If new team mates join the project some time later, the documentation is used to speed up the onboarding process.

If the documentation approach brings to much overhead and it is too bulky, it will not be used that often. If it is not used often, it will diverge from the implementation and becomes useless. We all know development documentation based on Word documents stored on network drives. Developers hate to write them and they don't believe the information they find in those files, because it is outdated.


## How can the documentation become more useful and easy to use?

To make the developer's life easier, writing documentation should be as easy as writing code.

* Keep the documentation tight at the implementation
* Use the same tooling for implementation and design documentation
* Review documentation as often the implementation
* Use the same versioning tool for documentation as code
* Allow reviews and version comparison (diffs)
* Trace the changes along the V-Model
* Allow documentation branching
* The toolchain shall work for humans (Desktop) and for servers (CI/CD)
* If someone gets the implementation, the design documents will be included
* Documentation shall follow the implementation: be modular, scalable and extendable


## What can be used for documentation?

### Documenting architecture and design

Textual documentation can be done in different ways. Using pure text will be not easy to read. But if pure text with special markup can be used for creating the documentation, there are easy ways to generate an good-locking documents out of those texts. For example Markdown or reStructuredText. Doxygen has native support for extended Markdown syntax.

| Tool                  | Syntax
|-----------------------|----------
| Doxygen               | Markdown (buggy implementation)
| Sphinx                | reStructuredText, Markdown

To keep the design documentation tight to the implementation, any graphical tools should be avoided. But because a picture can be worth a thousand words, some visual representation is needed.

| Tool                  | Diagrams
|-----------------------|----------
| PlantUML              | Sequence, Component, Class, State, Use Case, Activity, Mindmap


### Documenting code

There at least two major tools for documenting the code. Doxygen is widely used for C/C++ and Sphinx for Python code. Sphinx can also scan C++ sources by using Breathe, which provides the bridge from Doxygen to Sphinx (yes, you have to install Doxygen).

| Tool                  | Language
|-----------------------|----------
| Doxygen               | C++
| Sphinx                | Python, C++ (using Breathe)


### Versioning

For implementation and documentation Git shall be used.