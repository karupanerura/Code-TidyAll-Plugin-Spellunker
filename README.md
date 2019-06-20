# NAME

Code::TidyAll::Plugin::Spellunker - Code::TydyAll plugin for Spellunker

# SYNOPSIS

    [Spellunker]
    select = doc/**/*.txt
    stopwords = karupanerura

    [Spellunker::Pod]
    select = lib/**/*.{pm,pod}
    stopwords = karupanerura

# DESCRIPTION

Code::TidyAll::Plugin::Spellunker is Code::TydyAll plugin for Spellunker.

# OPTIONS

## stopwords

Add stopwords to the on memory dictionary. Separate it by ",".

SEE ALSO: https://metacpan.org/pod/Spellunker#$spellunker-%3Eadd\_stopwords(@stopwords)

# LICENSE

Copyright (C) karupanerura.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# AUTHOR

karupanerura <karupa@cpan.org>
