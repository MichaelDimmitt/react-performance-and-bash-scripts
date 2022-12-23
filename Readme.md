## Description
This project will be a repository of bash scripts to generate application bloat.

## Why
While working on a typescript react project build times were steadily increasing with number of lines added to the application. None of the code had lazy loading. At that moment I asked myself, will lazy loading help in resolving these build time issues? Take this idea oone step further, lets prove that every optimization had measurable improvements instead of relying on the word of others. Currently items like bundle size and first contentful paint can be measured using tools like lighthouse and webpack bundle analyzer. There may be tools to measure typescript compilation speeds and typescript lookup overhead for third party libraries or circular dependencies. However, I do not have those tools available at the moment.

Instead of applying tools to an existing project, my goal in this repo is to intentionally create performance issues. Measuring the difference from a hello world. The goal is to deal with as little configuration as possible. Next I will apply performance improvements to the project that are recommended by the libraries and measure the improvement.

This will help in conversations with others to have answers regarding react projects.

Each will try to look at the following characteristics:
1) build time considerations
2) runtime considerations

This will allow things to be tested like the following:
1) does build time decrease in typescript as # of lines of code increases in project.
  later, lazy loading will be introduced to see if it affects build time.
