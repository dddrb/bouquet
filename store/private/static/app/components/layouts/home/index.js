import React, {Component, PropTypes} from 'react';
import {Link} from 'react-router';
import {Button, FontIcon} from 'react-toolbox/lib';
import style from './style';

class Home extends Component {
  render() {
    return (
      <article>
        <header className={style.header}>
          <h2 className={style.title}>Title</h2>
          <h4 className={style.subtitle}>Subtitle</h4>
        </header>

        <section className={style.content}>
          <p className={style.summary}>Summary</p>
          <Link to='/components'>
            <Button label='Try Now' raised accent />
          </Link>
        </section>

        <footer className={style.footer}>
          <p className={style.author}>author</p>
        </footer>
      </article>
    );
  }
}

export default Home;
