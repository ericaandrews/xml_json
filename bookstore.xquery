
xquery version "1.0";
<html>
 <body>
   <div>
    <ul>
    {
    for $x in doc("bookstore.xml")/bookstore/book
    where $x/price<30
    order by $x/title
    return $x/title
    }
    </ul>
   </div>
 </body>
</html>
