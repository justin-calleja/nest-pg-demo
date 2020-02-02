import { Injectable, Inject } from '@nestjs/common';
import { PG_CONNECTION } from './constants';

@Injectable()
export class AppService {
  constructor(@Inject(PG_CONNECTION) private conn: any) {}

  async getUsers() {
    const res = await this.conn.query('SELECT * FROM users');
    return res.rows;
  }
}
