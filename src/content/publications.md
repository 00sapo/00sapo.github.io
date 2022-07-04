+++
title = "Publications"
id = "publications"
comments = false
schematype = "CollectionPage"
+++

The following are some notable publications that may you are interested in.
You may are interested in [the full list of publications](/publications-full).

![Screenshot of the Listening Test](/img/listening_test_screenshot.png)
### A perceptual measure for evaluating the resynthesis of automatic music transcriptions

{{< expand "See more" >}}
_Federico Simonetta, S. Ntalampiras, F. Avanzini_

Published in Multimedia Tools and Applications 2022

* [Full paper](https://arxiv.org/pdf/2202.12257.pdf)
* [Web Site](https://limunimi.github.io/MIA/)
* [Source-code](https://github.com/LIMUNIMI/PerceptualEvaluation)

##### Abstract 

This study focuses on the perception of music performances when contextual
factors, such as room acoustics and instrument, change. We propose to
distinguish the concept of “performance” from the one of “interpretation”,
which expresses the “artistic intention”. Towards assessing this distinction,
we carried out an experimental evaluation where 91 subjects were invited to
listen to various audio recordings created by resynthesizing MIDI data obtained
through Automatic Music Transcription (AMT) systems and a sensorized acoustic
piano. During the resynthesis, we simulated different contexts and asked
listeners to evaluate how much the interpretation changes when the context
changes. Results show that: (1) MIDI format alone is not able to completely
grasp the artistic intention of a music performance; (2) usual objective
evaluation measures based on MIDI data present low correlations with the
average subjective evaluation. To bridge this gap, we propose a novel measure
which is meaningfully correlated with the outcome of the tests. In addition, we
investigate multimodal machine learning by providing a new score-informed AMT
method and propose an approximation algorithm for the p-dispersion problem.

{{< /expand >}}

---

![Results of the A2S method](/img/audio_to_score_alignment.png)
### Audio-to-Score Alignment Using Deep Automatic Music Transcription

{{< expand "See more" >}}
_Federico Simonetta, S. Ntalampiras, F. Avanzini_

Published in MMSP 2021

* [Full paper](http://arxiv.org/pdf/2107.12854)
* [Source-code](https://github.com/LIMUNIMI/MMSP2021-Audio2ScoreAlignment)

##### Abstract 

Audio-to-score alignment (A2SA) is a multimodal task consisting in the
alignment of audio signals to music scores. Recent literature confirms the
benefits of Automatic Music Transcription (AMT) for A2SA at the frame-level. In
this work, we aim to elaborate on the exploitation of AMT Deep Learning (DL)
models for achieving alignment at the note-level. We propose a method which
benefits from HMM-based score-to-score alignment and AMT, showing a remarkable
advancement beyond the state-of-the-art. We design a systematic procedure to
take advantage of large datasets which do not offer an aligned score. Finally,
we perform a thorough comparison and extensive tests on multiple datasets.

{{< /expand >}}

---

![Example of melody identification](/img/cnn_melody_identification.png)
### A Convolutional Approach to Melody Line Identification in Symbolic Scores

{{< expand "See more" >}}
_Federico Simonetta, Carlos Eduardo Cancino-Chacón, S. Ntalampiras, G. Widmer_

Published in ISMIR 2022

* [Full paper](https://arxiv.org/pdf/1906.10547.pdf)
* [Website](https://arxiv.org/pdf/1906.10547.pdf)
* [Source-code](https://github.com/LIMUNIMI/Symbolic-Melody-Identification)

##### Abstract 

In many musical traditions, the melody line is of primary significance in a
piece. Human listeners can readily distinguish melodies from accompaniment;
however, making this distinction given only the written score -- i.e. without
listening to the music performed -- can be a difficult task. Solving this task
is of great importance for both Music Information Retrieval and musicological
applications. In this paper, we propose an automated approach to identifying
the most salient melody line in a symbolic score. The backbone of the method
consists of a convolutional neural network (CNN) estimating the probability
that each note in the score (more precisely: each pixel in a piano roll
encoding of the score) belongs to the melody line. We train and evaluate the
method on various datasets, using manual annotations where available and solo
instrument parts where not. We also propose a method to inspect the CNN and to
analyze the influence exerted by notes on the prediction of other notes; this
method can be applied whenever the output of a neural network has the same size
as the input.

{{< /expand >}}

