# Version Markup Language (VML)

It's got to have a name, doesn't it? I'm fairly sure VML is taken, alredy, but it'll do for now.


## Intro

VML is a markup language for *multi-level versioning* of documents. Or rather, resources, since just about anything can be version-handled. The idea is to provide an abstraction level to describe and identify *significant* new versions of a resource rather than having to identify every new save in the exact same way, because that will always create more problems than it will solve. "Which save is the one I sent to the editor? Which is the one with the edits? Which one do I need to revert to?"

VML is a language designed to keep track of both, but only highlight the ones you need to attach importance to. Now, this is a more complicated problem than you might think it is, so I'd suggest you to start by reading the papers I wrote on the subject, in `docs/balisage` and `docs/xmlprague`, and then watch the presentations in those same folders.


## What This Repo Is (Or Will Be)

This repository will, in time, hopefully, not only contain the above documentation and this readme, but also the VML Relax NG schema and some code to handle a basic VML implementation.

What does this mean? Well, a version handling implementation is of little use by itself, and for what I have in mind is a document management system, really, a system used to author and version handle content that is then processed and published in a variety of contexts. This is what used to be called "single-source publishing" or something to that effect.

I've designed and helped design a number of document management systems in my time, all of them for clients, but I've always wanted to design one for myself, the kind of system I would like to use if I got to choose. Some of the systems I've been involved in have come close, others not so much, but they are all proprietary, belonging to past employers and their clients, and I want to design and build something that I'm freely allowed to use myself and give away to others to use.

Most of my preferred tools start with "X" so expect XSLT and XQuery.


## So What's Wrong with Git?

Nothing. Git is fabulous. I use it all the time to keep track of my code. However, it targets a different problem than VML.

Git can version handle everything you throw at it, but it doesn't create an abstraction layer on top of the versioned resources, which is really what VML is about. VML is about hiding not only all those saves but also the boring minutiae of the mechanics behind, including filenames, paths and just about anything else you need to hide for one reason or another.

The reason is simple: In a "single-source document", the kind that reuses rather than copies information, the reuse is achieved by using a link to the common resource. If that link includes a path or a filename, it most likely won't be unique or persistent. Move the file and the link breaks. Rename the file and the link breaks. Etc. And we haven't even started discussing what happens if the common resource is versioned.

But if you use an abstraction layer to name that resource, independently from its location or current filename, and then use the abstraction layer to track any changes to the physical resource, the link won't break if your tracking doesn't.

This is what VML is, an abstraction layer. Git, in comparison, would be the tool that handles the physical resources. An implementation of VML for Git, then, would be the code required to trigger and translate whatever Git does to the VML instance.

If this didn't help, then please read the papers.