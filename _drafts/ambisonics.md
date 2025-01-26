---
author: Apollo
category: Audio
tags: Spatial Audio
---
Spatial audio's pretty cool, but the largest format for it, Dolby Atmos[^1], is
proprietary and is quite difficult to work with. Since Atmos is a proprietary
black box, it's impossible to design hardware or software to use it without
paying a large sum of money, and, since it's so complicated, Atmos-enabled
hardware needs powerful processing inside to be able to decode the audio. While
there are some proposed protocols that fix the problem of licensing costs, only
one fixes the problem of DSP load as well, and it's been hiding around since
the 70s (well, not exactly hiding, but still).

## Ambisonics

Developed in the 70s, Ambisonics is one of the earlier spatial formats in use,
but it has a few benefits that keep it relevant today. Ambisonic audio uses
four channels that represent sounds in a tetrahedral shape (more are used for
higher-order Ambisonics, but that's outside the scope of this article). These
effectively represent a sphere of sound, which happens to represent how we hear
sound well enough. While this might sound complicated to encode and decode,
it's so simple that it can be done with analog hardware (remember, the 70s),
which is great because it also takes almost nothing to encode and decode it in
the digital world. This makes it particularly useful for real-time environments
like gaming, and it actually sees a lot of use in the world of VR, where it is
particularly useful because of the ease with which Ambisonics-encoded audio can
be rotated.

{% include inline_image.html file="assets/img/ambisonic_mastering_system.jpg"
alt="Ambisonic Mastering System" caption="The Ambisonic Mastering System, an
early system for working with Ambisonic audio." %}

## Decoding Ambisonics

The main benefit of Ambisonics is the ease of decoding and the wide range of
arrays that it can be decoded to. Decoding Ambisonics to binaural for playback
with headphones is very easy with some free plugins, making mixing very easy
since monitoring can be done with regular headphones (no need to buy new
interfaces and expensive plugins!). If speakers are desired, there are many ways
to decode Ambisonics to speaker arrays, although it can be a bit difficult to
decode to irregular arrays like traditional 5.1 surround arrays (there is
proprietary software to do this, but I haven't ever tried it and I think it has
its problems - it will likely get better with time though, especially if
Ambisonics sees more widespread use).

## Recording for Ambisonics

Because Ambisonics represents audio as a sphere instead of a 3D space, it is
possible to record Ambisonic audio with a specialized mic called a soundfield
microphone. This allows for some neat opportunities for immersive audio, since
you can do field recording in 3D. If you want to hear some examples of this,
there are good free-to-download field recordings in the [Ambisonics Sound
Library by RØDE](https://library.soundfield.com/).

{% include inline_image.html file="assets/img/rode_nt1.jpg"
alt="Rode NT-1 Microphone" caption="The RØDE NT-1 soundfield microphone." %}

## Drawbacks of Ambisonics

While Ambisonics is great, there are still a few areas in which it could be
improved.

### Large-audience decoding

As far as I know, there's not really much of any software to decode Ambisonics
in a way where it sounds good for a large audience (most decoding methods end up
with sound that only really sounds good for a few people at the center). I'm not
an expert at Ambisonics stuff, so it's entirely possible that we have this
figured out, and I have seen a paper on how to fix this (although I haven't seen
any implementations), but it's something you should consider if you're planning
on using Ambisonics for a project. I'm certain that if this hasn't already been
figured out, this will be figured out soon enough.

### Decoding for irregular arrays

Ambisonics can be pretty difficult to decode to irregular arrays like the
rectangular 5.1 arrays that are commonly found. While it is possible, I haven't
found any good open implementations for it and from what I've heard it isn't in
an amazing state yet. The ideal shape for an Ambisonic array is a Platonic solid
such as a tetrahedron, but that isn't always easy, so I'd imagine we'll see some
more development work towards decoding for irregular arrays in the future should
Ambisonics become a bit more popular.

## Where to go from here?

If this has piqued your interest, there are some great resources to learn more
about this and some good free software if you want to jump in and give it a try.
I've listed some below.

* [Ambisonics Wikipedia Article](https://en.wikipedia.org/wiki/Ambisonics) -
  This is a great starting place to learn more of the basics, and it also points
  to some other good resources.
* [Ambisonics Sound Library by RØDE](https://library.soundfield.com/) - I
  already mentioned this above, but it's a great library of soundfield
  recordings in various environments that are free to use.
* [IEM Plugin Suite](https://plugins.iem.at/) - This is a set of free plugins
  for working with Ambisonic audio. IEM also does a lot of research on
  Ambisonics stuff, so they have a ton of great resources you can find on their
  website.
* [ambiX Plugin Suite](https://github.com/kronihias/ambix) - This is another
  set of free plugins for working with Ambisonic audio. It's not quite as
  pretty looking as the IEM plugins, but it has some pretty handy utilities
  for manipulating Ambisonic audio (function > form).

[^1]: I'm not affiliated with either Dolby or Ambisonics, nor an expert at either.
