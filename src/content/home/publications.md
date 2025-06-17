+++
title = "Publications"
id = "publications"
weight = 10
comments = false
schematype = "CollectionPage"
+++

Here is [the full list of publications](#publications-full).

The following are some notable publications that you may be interested in.

![Most studied composers in Composer Identification literature](/img/composer_identification_screenshot.png)

### Style-based Composer Identification and Attribution of Symbolic Music Scores: a Systematic Survey

{{< expand "See more" >}}
_Federico Simonetta_

Accepted in the Transactions of the International Society for Music Information Retrieval (TISMIR)
2025

- [Full paper](https://arxiv.org/abs/2506.12440)
- Journal link (to be updated)

##### Abstract

This paper presents the first comprehensive systematic review of literature on style-based composer identification and authorship attribution in symbolic music scores. Addressing the critical need for improved reliability and reproducibility in this field, the review rigorously analyzes 58 peer-reviewed papers published across various historical periods, with the search adapted to evolving terminology. The analysis critically assesses prevailing repertoires, computational approaches, and evaluation methodologies, highlighting significant challenges. It reveals that a substantial portion of existing research suffers from inadequate validation protocols and an over-reliance on simple accuracy metrics for often imbalanced datasets, which can undermine the credibility of attribution claims. The crucial role of robust metrics like Balanced Accuracy and rigorous cross-validation in ensuring trustworthy results is emphasized. The survey also details diverse feature representations and the evolution of machine learning models employed. Notable real-world authorship attribution cases, such as those involving works attributed to Bach, Josquin Desprez, and Lennon-McCartney, are specifically discussed, illustrating the opportunities and pitfalls of applying computational techniques to resolve disputed musical provenance. Based on these insights, a set of actionable guidelines for future research are proposed. These recommendations are designed to significantly enhance the reliability, reproducibility, and musicological validity of composer identification and authorship attribution studies, fostering more robust and interpretable computational stylistic analysis.

{{< /expand >}}

---

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
