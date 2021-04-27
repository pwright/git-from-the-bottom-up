const fs = require('fs'); 
const csv = require('csv-parser');
var exec = require('child_process').exec;

exec('echo "" >cardlist.adoc', function (error, stdOut, stdErr) { });

fs.createReadStream('cards.csv')
.pipe(csv())
.on('data', function(data){
    try {
        console.log("Name is: "+data.name);
        console.log("Filename is: "+data.filename);
        console.log("summary is: "+data.summary);
        console.log("text is: "+data.text);
       //perform the operation

        exec('HYGEN_OVERWRITE=1 hygen cardgen new --name "'+data.name+'" --filename '+data.filename+ ' --summary "'+data.summary+ '" --text "'+data.text+'"', function (error, stdOut, stdErr) { });
        
        exec('echo include::cards/card-'+data.filename+'.html[] >>cardlist.adoc', function (error, stdOut, stdErr) { });
       

    }
    catch(err) {
        //error handler
    }
})
.on('end',function(){
    //some final operation
});  