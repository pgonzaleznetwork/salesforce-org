const fs = require('fs');
const path = require('path');
const readline = require('readline')

async function parseText(){

    const lines = readline.createInterface({
        input: fs.createReadStream(__dirname+'/pr_body.txt'),
        crlfDelay: Infinity
    });

    for await (const line of lines) {
        if(line.includes('[') && line.includes(']')){

            let tests = line.substring(2,line.length-1);
            await fs.promises.writeFile(__dirname+'/testsToRun.txt',tests);
            await fs.promises.appendFile(__dirname+'/testsToRun.txt','\n');
        }
    }
}

parseText();