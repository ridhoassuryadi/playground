import { uniq } from 'lodash';
import insane from 'insane';
import jsonp from 'jsonp'

import User, { createUrl, gravatar } from './config/user.js';

const ridho = new User('ridho', 'ridho@gmail.com', 'muhammadridho.github.io');
const profile = createUrl(ridho.name);

const image = gravatar(ridho.email);

const ages = [1, 2, 4, 5, 12, 4];
console.log(uniq(ages));
