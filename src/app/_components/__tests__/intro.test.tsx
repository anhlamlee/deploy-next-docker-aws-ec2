import { render } from '@testing-library/react';
import { Intro } from '../intro';

describe('Intro Component', () => {
  it('renders without crashing', () => {
    const { container } = render(<Intro />);
    expect(container).toBeTruthy();
  });

  it('contains the main heading text', () => {
    const { getByText } = render(<Intro />);
    const heading = getByText('hanh phuc biet bao one more time phe qua');
    expect(heading).toBeTruthy();
  });

  it('contains the Next.js link', () => {
    const { getByText } = render(<Intro />);
    const nextjsLink = getByText('Next.js');
    expect(nextjsLink).toBeTruthy();
    expect(nextjsLink.getAttribute('href')).toBe('https://nextjs.org/');
  });

  it('contains the blog example text', () => {
    const { getByText } = render(<Intro />);
    const text = getByText(/Hello blog example using/);
    expect(text).toBeTruthy();
  });
}); 