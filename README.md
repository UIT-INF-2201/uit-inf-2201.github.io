---
title: INF-2201 Operating System Fundamentals
layout: home
permalink: /
---

## Administrative information

Administrative course information is available [here](https://en.uit.no/utdanning/emner/emne?p_document_id=859834)

We use Canvas to share important information, make sure to check your email. 
For discussions/chat the course has its own Discord server, you will find and invitation link on Canvas.

The github organization for this course can be found [here](https://github.com/uit-inf-2201)

Less formal communication channels are in the making. An invite will be posted on Canvas when it's ready.


**Staff**

* John Markus Bjørndalen <john.markus.bjorndalen@uit.no> (Course responsible, Lectures)
* Loïc Guégan (Lectures)
* Phuong Hoai Ha (Lectures)
* Michael John Murphy <michael.j.murphy@uit.no> (Projects)
* Øyvind Arne Moen Nohr <oyvind.a.nohr@uit.no> (Projects/TA)

TA/groups
* Hoang Loc La (TA, group 1)
* Eindride Ilmari Kjersheim (TA, group 2)
* Belal Medhat Mostafa AbdAlRheem <belal.m.abdalrheem@uit.no> (TA, group 3)
* Ilya Taksis (TA, group "Digital")

UiT Student administration: [TopDesk link from Canvas](https://uit.topdesk.net/tas/public/ssp/1550ac93-3cae-443d-a606-4ac1b2e5e6e1).

**Cheating**

As a student at UiT, you are obliged to familiarize yourself with the
current rules that apply to the use of aids during exams, as well as
rules for source use and citation. In the case of violation of these
rules, you may be suspected of cheating, or attempt at
cheating. Cheating on an exam is considered a violation of academic
integrity. Academic integrity(honesty) is about being clear in
relation to which thoughts/reflection and work are one's own, and
which are taken from other's work. Cheating is punishable by
cancellation of exams and/or exclusion from university.

You can read more about plagiarism and cheating [here](https://uit.no/sensor).

## Lecture plan

Room allocation: 
- The room allocation and times are available [here](https://tp.educloud.no/uit/timeplan/timeplan.php?id%5B%5D=INF-2201%2C1&type=course&sem=25v&campus=)

Below is the scheduled dates and topics for lectures and project hand-outs. Please note that: 

- **The schedule is tentative and will probably be updated**
- We may not be in the same room every day or week. Please check your calendar or the room allocation plan above for updated information.
- The numbers in front of the lectures: these correspond to "lecture numbers" as they were given previous years, but may be slightly out 
  of order this year as we are updating the course content. 



| W# | wdays       | Mon           | Tue                       | Wed                | Thu                                     | Fr              |
|---:|-------------|---------------|---------------------------|--------------------|-----------------------------------------|-----------------|
|  2 | 06.01-10.01 |               | 01 intro                  |                    | 02 + 04 syscalls, processes, protection |                 |
|  3 | 13.01-17.01 |               | 05 threads, critsec       | P2 out             | 05 cont., 06 semaphores                 |                 |
|  4 | 20.01-24.01 |               | 03 OS structure           |                    | 07 monitors                             |                 |
|  5 | 27.01-31.01 |               |                           |                    | 08 preemptive                           |                 |
|  6 | 03.02-07.02 |               |                           | Task switch (Mike) | *SAMEFOLKETS DAG*                       |                 |
|  7 | 10.02-14.02 | P2 in         | *No lecture (TEKdagen)*   | P3 out             | 11 msgpassing                           |                 |
|  8 | 17.02-21.02 |               | 09 deadlocks              |                    | 10 cpu scheduling                       |                 |
|  9 | 24.02-08.02 |               | 12 io devices and drivers |                    |                                         |                 |
| 10 | 03.03-07.03 | P3 in         | 13 addr-trans paging      | P4 out             | 14 paging and vm design                 |                 |
| 11 | 10.03-14.03 |               |                           |                    |                                         |                 |
| 12 | 17.03-21.03 |               |                           |                    |                                         |                 |
| 13 | 24.03-28.03 | P4 in         | 15 storage systems        | P5 out             |                                         |                 |
| 14 | 31.03-04.04 |               | 16 file systems           |                    |                                         |                 |
| 15 | 07.04-11.04 |               |                           |                    |                                         |                 |
| 16 | 14.04-18.04 |               | *EASTER*                  | *EASTER*           | *EASTER*                                | *EASTER*        |
| 17 | 21.04-25.04 | *EASTER*      |                           | P6 (TBA)           |                                         |                 |
| 18 | 28.04-02.05 | P5 in         |                           | P6 out (optional)  |                                         |                 |
| 19 | 05.05-09.05 |               | 18 exam prep              |                    |                                         |                 |
| 20 | 12.05-16.05 | P6 in??       |                           |                    | Model checking, Harmony              |                 |
| 21 | 19.05-23.05 |               |                           |                    |                                         |                 |
| 22 | 26.05-30.05 |               |                           |                    |                                         |                 |
| 23 | 02.06-06.06 | exam?         |                           |                    |                                         |                 |
| 24 | 09.06-13.06 | *whit monday* |                           |                    |                                         | End of semester |

## Readings

1. Andrew Tanenbaum, Herbert Bos, Modern Operating Systems Fifth Edition, Global Edition.
2. Lecture notes
3. Mandatory assignments

## Mandatory assignments

| Project | Subject                                      | Lecturer |
|---------|----------------------------------------------|----------|
| ~~P1~~  | ~~Booting, OS image  (see below)~~           | MM       |
| P2      | Cooperative scheduling, locks                | MM       |
| P3      | Preemption, syscalls and dining philosophers | MM       |
| P4      | IPC, memory                                  | MM       |
| P5      | Virtual Memory                               | MM       |
| P6      | File system                                  | MM       |

We are restructuring the course. P1 is no longer a mandatory project,
and some of tasks from the old P1 project are moved to P2.

## Deadlines ⏰
As a general rule
- hand out projects **not before** lectures on Wednesdays.
- hand in projects **14:30** Monday before next project.
- grades published **not before 12:00** Friday after hand in

## Design reviews 🔍
In this course, we mandate that you participate in 'design reviews`.

So what is a design review?

Design review is a short session between a TA and a group, typically 10 minutes, inviting you to explain how you plan to solve the ongoing mandatory project. There is no time for an in-depth explanation of code, algorithms, etc., you must summarize and give a precise presentation of your solution's abstract **design**.

Design reviews are broken into a few stages.
1. You hold a presentation about what the problem(s) is/are and how you think you can solve it
2. The TA will ask you questions typically about
  - Topics you did not cover
  - Topics you were unclear about
3. You get feedback and grade.
  - If you do not pass, don't worry. You will get a second chance, reschedule with your TA.

The whole idea of design reviews is to make sure you pass the assignments!

When will the design reviews take place?

During colloquium hours the week after hand-out.

## Hand-in 📮
- Deliver assignments by deadline on canvas
  - Format should be .zip
  - Remember to include your report!
- Remember to remove any prebuilt binaries (make clean)
- Include everything i.e. hidden folders such as .git
