+++
title = "Full List Of Publications"
+++

All the code that I can publish is available in online. See my
[GitHub page](https://github.com/00sapo) for finding them.
You can also check my [Google Scholar profile](https://scholar.google.it/citations?hl=en&pli=1&user=qkEXQTgAAAAJ).

PDFs of my papers are also available on my [Zotero personal page](https://www.zotero.org/fsimonetta) whenever possible.

{{< rawhtml >}}

<!--
see BibBase help page to understand the following line: https://bibbase.org/help
* jsonp=1 is needed for requesting the javascript
* other options customize the entries
* try adding nocache=1 to force updating
-->
<link rel="stylesheet" href="/css/bibbase.css" type="text/css" media="screen">
<script src="https://bibbase.org/show?bib=https%3A%2F%2Fbibbase.org%2Fzotero-mypublications%2Ffsimonetta&jsonp=1&group0=type&sort=-year&theme=bullets&authorFirst=1&fullnames=0&owner=simonetta&commas=true&noTitleLinks=true&noIndex=true&folding=1&showSearch=true&urlLabel=Web"></script>

<script type="text/javascript">

    // Save a reference to the original function
    var originalToggleGroup = toggleGroup;

    // Create a new function that wraps the original function
    toggleGroup = function() {
        // Call the original function
        originalToggleGroup.apply(this, arguments);

        // Then call tweakingFunc
        tweakingFunc();
    }

    function tweakingFunc() {
        // 1.
        var bibbaseIconTextElements = document.querySelectorAll('.bibbase_icon_text');
        bibbaseIconTextElements.forEach(function(element) {
            if (element.textContent === ' paper') {
                element.textContent = ' Zotero';
                element.classList.add('ai', 'ai-zotero');
                var siblingBibbaseIcon = element.parentNode.querySelector('.bibbase_icon');
                if (siblingBibbaseIcon) {
                    siblingBibbaseIcon.parentNode.removeChild(siblingBibbaseIcon);
                }
            } else if (element.textContent === 'Web') {
                element.textContent = ' Web';
                element.classList.add('fa-regular', 'fa-arrow-up-right-from-square');
                var siblingBibbaseIcon = element.parentNode.querySelector('.bibbase_icon');
                if (siblingBibbaseIcon) {
                    siblingBibbaseIcon.parentNode.removeChild(siblingBibbaseIcon);
                }
            }
        });

        // 2.
        var doiElements = document.querySelectorAll('.doi');
        doiElements.forEach(function(element) {
            // Remove all span elements
            var spanElements = element.querySelectorAll('span');
            spanElements.forEach(function(span) {
                span.parentNode.removeChild(span);
            });
            element.classList.add('ai', 'ai-doi');
            element.textContent = ' DOI';
        });
    }

</script>

{{< /rawhtml >}}
