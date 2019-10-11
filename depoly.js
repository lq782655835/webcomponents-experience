var ghpages = require('gh-pages');
const shell = require('shelljs');
const chalk = require('chalk');

// 发布
ghpages.publish('./build/es5-bundled', {
    branch: 'gh-pages',
}, (err) => {
    if(err) {
        console.log(chalk.red(err));
    } else {
        // shell.rm('-rf', './demo');
        console.log(chalk.green('demo同步完成!'));
    }
});