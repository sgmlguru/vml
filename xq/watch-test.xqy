xquery version "3.0";

import module namespace v="http://exist-db.org/versioning";
(:at "/db/system/repo/xquery-versioning-module-1.1.4/content/versioning.xqm";:)

let $base-uri := '/db/test/doc/test.xml' 

let $doc := doc($base-uri)

let $versions := v:history($doc)
let $revisions := v:revisions($doc)
let $v := v:versions($doc)

let $old := v:doc($doc,5)
let $mydoc := doc('/db/system/versions/db/test/doc/test.xml.5')

let $new-save := concat($base-uri,'.',$versions//v:revision[last()]/@rev)
let $new-doc := v:doc($doc,number(substring-after($new-save,'.xml.')))

(:let $delete := xmldb:remove('/db/test/doc','test.xml'):)

return 
    <message>
        <new-save>{$new-save}</new-save>
        {$new-doc}
        {$versions}
    </message>