# Notes on eXist URLs

An eXist URL in VML should probably look like this:

`/db/test/doc/test.xml.25`

That is, base document `/db/test/doc/test.xml`, eXist revision '25'. This is an actual resource in eXist, found in `/db/system/versions/db/test/doc`, but it's a diffed XML, so a Versioning Module function is needed to get the actual document. The version history is recorded like this in eXist:

```XML
<v:history xmlns:v="http://exist-db.org/versioning">
    <v:document>/db/test/doc/test.xml</v:document>
    <v:revisions>
        <v:revision rev="5">
            <v:date>2017-04-22T20:57:45.189+02:00</v:date>
            <v:user>admin</v:user>
        </v:revision>
        <v:revision rev="9">
            <v:date>2017-04-22T20:59:51.378+02:00</v:date>
            <v:user>admin</v:user>
        </v:revision>
        <v:revision rev="17">
            <v:date>2017-04-22T21:55:50.796+02:00</v:date>
            <v:user>admin</v:user>
        </v:revision>
        <v:revision rev="25">
            <v:date>2017-04-22T22:50:02.034+02:00</v:date>
            <v:user>admin</v:user>
        </v:revision>
    </v:revisions>
</v:history>
```

The eXist URL can then be used to get a particular version, like so:

```XQuery
let $doc := v:doc($doc,number(substring-after($exist-url,'.xml.')))
```

Here, `$exist-url` is the eXist URL, `/db/test/doc/test.xml.25` in our example. This would output version 25 of `test.xml` in `$doc`.

Of course, we don't need the entire eXist-style version history XML as such; in VML, we simply need to pair the eXist URL with the right VML version. Assuming a new edited version *1.0.1* with the eXist URL `/db/test/doc/test.xml.25`, created from the "stable" version 1.0 with the eXist URL `/db/test/doc/test.xml.20`, the VML instance might look like this:

```XML
<map>
    <resources>
        <resource>
            <base>urn:x-vml-exist:r1:doc:000001</base>
            
            ...
            
            <!-- Integer -->
            <version>
                <rev>1</rev>
                <doc>
                    <metadata>
                        <!-- Level 0 -->
                    </metadata>
                    <url>/db/test/doc/test.xml.20</url>
                </doc>
                
                <!-- Decimal -->
                <version>
                    <metadata>
                        <!-- Level 1 -->
                    </metadata>
                    <rev>0</rev>
                    <doc>
                        <url></url>
                    </doc>
                    
                    <!-- Centesimal -->
                    <version>
                        <rev>1</rev>
                        <doc>
                            <metadata>
                                <!-- Level 2 (saved document v 1.0.1) -->
                            </metadata>
                            <url>/db/test/doc/test.xml.25</url>
                        </doc>
                    </version>
                </version>
            </version>
        </resource>
    </resources>
</map>
```

It would be possible to open any version recorded by VML simply by using the above XQuery fragment.
