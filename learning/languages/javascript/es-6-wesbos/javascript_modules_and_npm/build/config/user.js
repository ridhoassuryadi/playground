import slug from 'slug';
import { url } from './config';
import base64 from 'base-64';

export default function(name, email, website){
  return { name, email, website };
}

export const createUrl = (name) => `${url}/users/${slug(name)}`;

export const gravatar = (email) => {
  const hash = base64(email);
  const photoUrl = `https://www.gravatar.com/avatar/${hash}`;

  return photoUrl;
}
