xquery version "3.0";

import module namespace v="http://exist-db.org/versioning";
(:at "/db/system/repo/xquery-versioning-module-1.1.4/content/versioning.xqm";:)

(:import module namespace versioning="http://exist-db.org/xquery/versioning":)
(:at "java:org.exist.versioning.xquery.VersioningModule";:)


(:let $login := xmldb:login('/db','admin','PhilipsDP70'):)

let $doc := doc('/db/test/doc/test.xml')

let $versions := v:history($doc)
let $revisions := v:revisions($doc)
let $v := v:versions($doc)

let $old := v:doc($doc,5)

(:let $delete := xmldb:remove('/db/test/doc','test.xml'):)

return <message>
        {$versions}
    </message>