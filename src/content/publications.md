+++
title = "Publications"
id = "publications"
comments = false
schematype = "CollectionPage"
+++

<!-- Remove the margins before the title -->
<style>
#content h3 {
margin: -2em 0em 0em;
}
</style>

<!-- Here is [the full list of my publications](https://www.zotero.org/fsimonetta). -->

Here is [the full list of publications](/publications-full).

The following are some notable publications that you may be interested in.

![Screenshot of the Listening Test](/img/listening_test_screenshot.png)

### A perceptual measure for evaluating the resynthesis of automatic music transcriptions

{{< expand "See more" >}}
_Federico Simonetta, S. Ntalampiras, F. Avanzini_

Published in Multimedia Tools and Applications 2022

- [Full paper](https://arxiv.org/abs/2202.12257)
- [Web Site](https://limunimi.github.io/MIA/)
- [Source-code](https://github.com/LIMUNIMI/PerceptualEvaluation)

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

![Acoustics-specific strategies improve velocity prediction](/img/acoustics_specific_screenshot.jpg)

### Acoustics-specific Piano Velocity Estimation

{{< expand "See more" >}}
_Federico Simonetta, S. Ntalampiras, F. Avanzini_

Published in MMSP 2022

- [Full paper](https://arxiv.org/abs/2203.16294)
- [Web Site](https://limunimi.github.io/MIA/)
- [Source-code](https://github.com/LIMUNIMI/ContextAwareAMT/releases/tag/phdthesis)

##### Abstract

Motivated by the state-of-art psychological research, we note that a piano performance
transcribed with existing Automatic Music Transcription (AMT) methods cannot be
successfully resynthesized without affecting the artistic content of the performance.
This is due to 1) the different mappings between MIDI parameters used by different
instruments, and 2) the fact that musicians adapt their way of playing to the
surrounding acoustic environment. To face this issue, we propose a methodology to build
acoustics-specific AMT systems that are able to model the adaptations that musicians
apply to convey their interpretation. Specifically, we train models tailored for virtual
instruments in a modular architecture that takes as input an audio recording and the
relative aligned music score, and outputs the acoustics-specific velocities of each
note. We test different model shapes and show that the proposed methodology generally
outperforms the usual AMT pipeline which does not consider specificities of the
instrument and of the acoustic environment. Interestingly, such a methodology is
extensible in a straightforward way since only slight efforts are required to train
models for the inference of other piano parameters, such as pedaling.

{{< /expand >}}

---

![Benchmarks of feature extraction tools](/img/optimizing_feature_extraction_screenshot.jpg)

### Optimizing Feature Extraction for Symbolic Music

{{< expand "See more" >}}
_Federico Simonetta, Ana Llorens, Martín Serrano, Eduardo García-Portugués, Álvaro
Torrente_

Published in ISMIR 2023

- [Full paper](https://arxiv.org/abs/2307.05107)
- [Source-code](https://github.com/DIDONEproject/music_symbolic_features/)

##### Abstract

This paper presents a comprehensive investigation of existing feature extraction tools
for symbolic music and contrasts their performance to determine the feature set that
best characterizes the musical style of a given music score. In this regard, we propose
a novel feature extraction tool, named musif, and evaluate its efficacy on various
repertoires and file formats, including MIDI, MusicXML, and \*\*kern. Musif approximates
existing tools such as jSymbolic and music21 in terms of computational efficiency while
attempting to enhance the usability for custom feature development. The proposed tool
also enhances classification accuracy when combined with other feature sets. We
demonstrate the contribution of each feature set and the computational resources they
require. Our findings indicate that the optimal tool for feature extraction is a
combination of the best features from each tool rather than a single one. To facilitate
future research in music information retrieval, we release the source code of the tool
and benchmarks.

{{< /expand >}}
