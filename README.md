

## Website template for UiT courses using GitHub Classroom

How to use this template:

1. Make sure you have created a new organization first following
   https://github.com/uit-no/github-course-guide#github-organization.
2. Now you can generate a website repository from this template:
   https://github.com/uit-no/github-course-template/generate. 
   Remember to specify that the repository should be created in the new organization.
3. For the "Owner" select the newly created organization.
   For the "Repository name" use (organization name).github.io, e.g.:
   "uit-inf-2202-f16.github.io". Select "Public". Leave "Include all branches" unchecked,
   click "Create repository from template".
4. In the newly created repository adjust information in `_config.yml`.
5. In the newly created repository modify the syllabus in the `index.md` file.

Your course website will automatically appear at https://(organization name).github.io/.

You and the TAs can now update the syllabus, add lecture notes, and so on by
pushing to the repository.

After you modify the repository sources (`_config.yml`, `index.md`), GitHub Pages
will automatically regenerate HTML pages.

If possible, creating a redirect in the UiT web server makes it easier to
remember the course website address. The inf-2202 course is for example
redirected from: http://www.cs.uit.no/kursinfo/inf2202
