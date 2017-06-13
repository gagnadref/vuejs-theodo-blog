DELETE FROM article_tag;
DELETE FROM article;
DELETE FROM tag;
DELETE FROM author;

INSERT INTO tag (id, name, slug) VALUES
(1, 'Tech', 'programming'),
(2, 'Methods', 'methods'),
(3, 'Lifestyle', 'corporate'),
(4, 'Events', 'events');

INSERT INTO author (id, slug, name, picture) VALUES
(1, 'fabrice-bernhard', 'Fabrice Bernhard', '/img/authors/fabriceb.jpeg'),
(3, 'benjamin-grandfond', 'Benjamin Grandfond', '/img/authors/benjaming.jpeg'),
(42, 'tristanr', 'Tristan Roussel', '/img/authors/tristanr.jpeg'),
(116, 'flavianhtheodo-fr', 'Flavian Hautbois', '/img/authors/flavianh.jpeg'),
(50, 'nicolasg', 'Nicolas Girault', '/img/authors/nicolasg.jpeg'),
(38, 'raphaeld', 'Raphaël Dubigny', '/img/authors/raphaeld.jpeg'),
(23, 'jonathanb', 'Jonathan Beurel', '/img/authors/jonathanb.jpeg'),
(12, 'pierre-henri-cumenge', 'Pierre-Henri Cumenge', '/img/authors/pierrehenric.jpeg'),
(120, 'louisztheodo-fr', 'Louis Zawadzki', '/img/authors/louisz.jpeg'),
(57, 'woodyr', 'Woody Rousseau', '/img/authors/woodyr.jpeg'),
(129, 'sammyttheodo-fr', 'Sammy Teillet', '/img/authors/sammyt.jpeg'),
(51, 'nicolasgo', 'Nicolas Goutay', '/img/authors/nicolasgo.jpeg'),
(93, 'vincentl', 'Vincent Langlet', '/img/authors/vincentl.jpeg'),
(31, 'reynaldm', 'Reynald Mandel', '/img/authors/reynaldm.jpeg'),
(34, 'matthieua', 'Matthieu Auger', '/img/authors/matthieua.jpeg'),
(86, 'thibautgtheodo-fr', 'Thibaut Gatouillat', '/img/authors/thibautg.jpeg'),
(95, 'antoinettheodo-fr', 'Antoine Thoubans', '/img/authors/antoinet.jpeg'),
(146, 'foucaulddtheodo-fr', 'Foucauld Degeorges', '/img/authors/foucauldd.jpeg'),
(64, 'thibautc', 'Thibaut Cheymol', '/img/authors/thibautc.jpeg'),
(76, 'nathangtheodo-fr', 'Nathan Gaberel', '/img/authors/nathang.jpeg'),
(46, 'marcpp', 'Marc Perrin-Pelletier', '/img/authors/marcpp.jpeg'),
(128, 'nicolastrtheodo-fr', 'Nicolas Trinquier', '/img/authors/nicolastr.jpeg'),
(111, 'cedricktheodo-fr', 'Cédric Kui', '/img/authors/cedrick.jpeg'),
(18, 'nicolasb', 'Nicolas Boutin', '/img/authors/nicolasb.jpeg'),
(43, 'yannj', 'Yann Jacquot', '/img/authors/yannj.jpeg'),
(87, 'kevinrtheodo-fr', 'Kevin Reynel', '/img/authors/kevinr.jpeg'),
(48, 'paulm', 'Paul Molin', '/img/authors/paulm.jpeg'),
(126, 'jeremygtheodo-fr', 'Jeremy Gotteland', '/img/authors/jeremyg.jpeg'),
(131, 'richardctheodo-fr', 'Richard Casetta', '/img/authors/richardc.jpeg'),
(124, 'melchiormtheodo-fr', 'Melchior Merlin', '/img/authors/melchiorm.jpeg'),
(133, 'pauljtheodo-fr', 'Paul Jehanno', '/img/authors/paulj.jpeg'),
(132, 'fernandobtheodo-fr', 'Fernando Beck', '/img/authors/fernandob.jpeg'),
(166, 'victordtheodo-co-uk', 'Victor Duprez', '/img/authors/victord.jpeg'),
(192, 'pierreptheodo-fr', 'Pierre Poupin', '/img/authors/pierrep.jpeg'),
(191, 'georgesbtheodo-fr', 'Georges Biaux', '/img/authors/georgesb.jpeg'),
(197, 'guillaumertheodo-fr', 'Guillaume Renouvin', '/img/authors/guillaumer.jpeg'),
(209, 'benetheodo-fr', 'Ben Ellerby', '/img/authors/bene.jpeg'),
(211, 'quentinftheodo-fr', 'Quentin Febvre', '/img/authors/quentinf.jpeg'),
(190, 'alexandrectheodo-fr', 'Alexandre Chaintreuil', '/img/authors/alexandrec.jpeg'),
(180, 'clementetheodo-fr', 'Clément Escolano', '/img/authors/clemente.jpeg'),
(153, 'damienptheodo-fr', 'Damien Peltier', '/img/authors/damienp.jpeg'),
(162, 'brunogtheodo-co-uk', 'Bruno Godefroy', '/img/authors/brunog.jpeg'),
(165, 'jeremydtheodo-fr', 'Jérémy Dardour', '/img/authors/jeremyd.jpeg'),
(168, 'adrienatheodo-fr', 'Adrien Agnel', '/img/authors/adriena.jpeg'),
(81, 'maximestheodo-fr', 'Maxime Sraïki', '/img/authors/maximes.jpeg'),
(53, 'clementrp', 'Clement Ricateau Pasquino', '/img/authors/clementrp.jpeg'),
(55, 'yulingc', 'Yuling Cheng', '/img/authors/yulingc.jpeg'),
(58, 'rodolphedb', 'Rodolphe Darves Bornoz', '/img/authors/rodolphedb.jpeg'),
(47, 'jeanremib', 'Jean-Rémi Beaudoin', '/img/authors/jeanremib.jpeg'),
(24, 'nicolast', 'Nicolas Taborisky', '/img/authors/nicolast.jpeg'),
(90, 'clemenththeodo-fr', 'Clément Hannicq', '/img/authors/clementh.jpeg'),
(63, 'jeanlucc', 'Jean-Luc Colombier', '/img/authors/jeanlucc.jpeg'),
(98, 'kevinjtheodo-fr', 'Kévin Jean', '/img/authors/kevinj.jpeg'),
(97, 'charlesbtheodo-fr', 'Charles Bochet', '/img/authors/charlesb.jpeg'),
(102, 'samygtheodo-fr', 'Samy Ghribi', '/img/authors/samyg.jpeg'),
(110, 'stanislasbtheodo-fr', 'Stanislas Bernard', '/img/authors/stanislasb.jpeg'),
(96, 'auroremtheodo-fr', 'Aurore Malherbes', '/img/authors/aurorem.jpeg'),
(92, 'corentinbtheodo-fr', 'Corentin de Boisset', '/img/authors/corentinb.jpeg'),
(68, 'benjaminb', 'Benjamin Bonny', '/img/authors/benjaminb.jpeg'),
(88, 'cyrillehtheodo-fr', 'Cyrille Hugues', '/img/authors/cyrilleh.jpeg'),
(91, 'antoinektheodo-fr', 'Antoine Kahn', '/img/authors/antoinek.jpeg'),
(112, 'thibaultctheodo-fr', 'Thibault Coudray', '/img/authors/thibaultc.jpeg'),
(174, 'ambroiseltheodo-fr', 'Ambroise Laurent', '/img/authors/ambroisel.jpeg');

INSERT INTO article (id, slug, title, publication_date, reading_time, picture, summary, content, author_id) VALUES
(
7244,
'transform-your-symfony-forms-make-it-nice-elegant-and-modern-with-material-design-in-5-minutes',
'Transform your Symfony forms, make it nice, elegant and modern with Material Design in 5 minutes!',
'2017/03/20',
'2 min',
'/img/articles/Screen-Shot-2017-03-22-at-19.38.04-1200x489.png',
'You want to make a nice, elegant and modern form using the new design standards of Material Design, I’ll try to give you a 5-minutes way to do so with Materialize, a JQuery library, based on these guidelines. Get Started Get the assets from Materialize and add it in web directory of your project following Symfony…',
'<p class="selectionShareable"><span style="font-weight: 400;">You want to make a nice, elegant and modern form using the <a href="https://material.io/guidelines/" target="_blank">new design standards of Material Design</a>, I’ll try to give you a 5-minutes way to do so with <a href="http://materializecss.com/" target="_blank">Materialize</a>, a JQuery library, based on these guidelines.</span></p><h3><b>Get Started</b></h3><p class="selectionShareable"><span style="font-weight: 400;">Get the assets from <a href="http://materializecss.com/getting-started.html" target="_blank">Materialize</a>&nbsp;</span><span style="font-weight: 400;">and add it in web directory of your project following <a href="http://symfony.com/doc/current/best_practices/web-assets.html" target="_blank">Symfony best practices</a>&nbsp;: in fonts, <code>Roboto</code>, in CSS, <code>materialize.min.css</code>, in JS, <code>materialize.min.js</code></span><span style="font-weight: 400;">.&nbsp;Prefer minified version to improve loading performance.</span></p><p class="selectionShareable"><span style="font-weight: 400;">Run <code>assets:install</code> command.</span></p><h3><b>Import&nbsp;assets in your project templates</b></h3><p class="selectionShareable">You need to import assets into your Twig. At the beginning of your <code>base.html</code>:</p><pre><code class="hljs xml">{% block stylesheets %}<span class="hljs-tag">&lt;<span class="hljs-name">link</span> <span class="hljs-attr">href</span>=<span class="hljs-string">"{{ asset(\'css/materialize.css\') }}"</span> <span class="hljs-attr">rel</span>=<span class="hljs-string">"stylesheet"</span>/&gt;</span><span class="hljs-tag">&lt;<span class="hljs-name">link</span> <span class="hljs-attr">href</span>=<span class="hljs-string">"{{ asset(\'css/your_form_theme.css\') }}"</span> <span class="hljs-attr">rel</span>=<span class="hljs-string">"stylesheet"</span>/&gt;</span>{% endblock %}</code></pre><p class="selectionShareable">At the end of your&nbsp;<code>base.html</code></p><pre><code class="hljs xml">{% block javascripts %}<span class="hljs-tag">&lt;<span class="hljs-name">script</span> <span class="hljs-attr">type</span>=<span class="hljs-string">"text/javascript"</span> <span class="hljs-attr">src</span>=<span class="hljs-string">"https://code.jquery.com/jquery-2.1.1.min.js"</span>&gt;</span><span class="undefined"></span><span class="hljs-tag">&lt;/<span class="hljs-name">script</span>&gt;</span><span class="hljs-tag">&lt;<span class="hljs-name">script</span> <span class="hljs-attr">type</span>=<span class="hljs-string">"text/javascript"</span> <span class="hljs-attr">src</span>=<span class="hljs-string">"{{ asset(\'js/materialize.min.js\') }}"</span>&gt;</span><span class="undefined"></span><span class="hljs-tag">&lt;/<span class="hljs-name">script</span>&gt;</span>{% endblock %}</code></pre><p class="selectionShareable">You need JQuery and <code>materialize.min.js</code> if you use Materialize Javascripts animations .</p><h3><b>Create your Materialize form theme</b></h3><p class="selectionShareable">Symfony use <a href="http://symfony.com/doc/current/form/form_customization.html#what-are-form-themes" target="_blank">form themes</a> to standardize display from components</p><p class="selectionShareable"><span style="font-weight: 400;">You need to create your Materialize form theme to transform your form design from a basic to an elegant one. You can use <a href="https://gist.github.com/JusteLeblanc/da4d2100fc966e0962e5f50daf9333f9" target="_blank">this Gist I created for you</a></span><span style="font-weight: 400;">. You need to create it into <code>app/Ressources/views</code> folder. Once it’s done, update your Twig configuration i</span><span style="font-weight: 400;">n <code>app/config/config.yml</code>:</span></p><pre><code class="hljs yaml"><span class="hljs-attr">twig:</span><span class="hljs-attr">  form_themes:</span><span class="hljs-bullet">  -</span> <span class="hljs-string">\'views/materialize_layout.html.twig\'</span></code></pre><p class="selectionShareable"><strong>And that’s it!</strong> You have built an elegant, modern and responsive form with very nice TextInputs, DatePicker or&nbsp;SelectList.</p><p class="selectionShareable"><a href="http://www.theodo.fr/uploads/blog//2017/03/Screen-Shot-2017-03-22-at-19.38.04.png" class="fluidbox fluidbox-closed" id="fluidbox-1"><div class="fluidbox-wrap" style="z-index: 990;"><img class="aligncenter size-full wp-image-7773" src="http://www.theodo.fr/uploads/blog//2017/03/Screen-Shot-2017-03-22-at-19.38.04.png" alt="Transform Symfony Forms with Material Design" width="1920" height="783" style="opacity: 1;"><div class="fluidbox-ghost" style="width: 445px; height: 181px; top: 0px; left: 0px;"></div><div class="fluidbox-loader" style="width: 445px; height: 181px; top: 0px; left: 0px;"></div></div></a></p><p class="selectionShareable"><em>I look forward to reading&nbsp;your feedbacks and your suggestions or issues on the <a href="https://gist.github.com/JusteLeblanc/da4d2100fc966e0962e5f50daf9333f9" target="_blank">form theme repository</a>.</em></p><h3>Tips</h3><p class="selectionShareable"><span style="font-weight: 400;">You can update primary, secondary and background colors to adapt your form to your own visual identity by editing <code>_variables.scss</code> file in components folder. You’ll need Gulp to compile and minify CSS files.</span></p><p class="selectionShareable"><span style="font-weight: 400;">Use <a href="http://materializecss.com/grid.html" target="_blank">grids of Materialize</a></span><span style="font-weight: 400;">&nbsp;to display multiple fields on the same row depending on device width.</span></p><p class="selectionShareable"><span style="font-weight: 400;">If you want to customise a specific form instead of all the forms of your app, follow the <a href="http://symfony.com/doc/current/form/form_customization.html#method-2-inside-a-separate-template" target="_blank">Symfony documentation</a> and import your new form theme by adding this line at the beginning of the corresponding template:</span></p><p class="selectionShareable"><code>{% form_theme form \'materialize_layout.html.twig\'}</code></p>',
18
),
(
8253,
'enzyme-fast-and-simple-react-testing',
'Enzyme : Fast and Simple React Testing',
'2017/04/04',
'6 min',
'/img/articles/generic-testing.png',
'React has quickly climbed its way to being a top framework choice for Javascript single page applications. What’s not to like? A declarative syntax for UI Virtual-DOM for performance The possibility of server-side rendering. There is however one area that could be improved; its built-in testing utilities – and this is where Enzyme steps in…',
'<p class="selectionShareable">React has quickly climbed its way to being a top framework choice for Javascript single page applications.<br>
What’s not to like?
</p>
<ul>
<li>A declarative syntax for UI</li>
<li>Virtual-DOM for performance</li>
<li>The possibility of server-side rendering.</li>
</ul>
<p class="selectionShareable">There is however one area that could be improved; its built-in testing utilities – and this is where Enzyme steps in as the must have tool for front-end React testing.</p>
<p class="selectionShareable">This is an example of a test using the native utilities of the framework:</p>
<pre><code class="javascript language-javascript hljs"><span class="hljs-keyword">const</span> myRenderer = ReactTestUtils.createRenderer();
myRenderer.render(<span class="xml"><span class="hljs-tag">&lt;<span class="hljs-name">myComponent</span>/&gt;</span></span>);
<span class="hljs-keyword">const</span> output = renderer.getRenderOutput();
<span class="hljs-keyword">const</span> result =  scryRenderedDOMComponentsWithTag(output, div);

expect(result[<span class="hljs-number">0</span>].props.children).toEqual([
    <span class="xml"><span class="hljs-tag">&lt;<span class="hljs-name">p</span>&gt;</span>Title<span class="hljs-tag">&lt;/<span class="hljs-name">p</span>&gt;</span></span>
]);
</code></pre>
  <p class="selectionShareable">Its verbose, long-winded and not that fun to develop with. The alternative put forward, Enzyme, brings it down to something much more expressive and readable:</p>
  <pre><code class="javascript language-javascript hljs"><span class="hljs-keyword">const</span> wrapper = shallow(<span class="xml"><span class="hljs-tag">&lt;<span class="hljs-name">myComponent</span>/&gt;</span></span>);
expect(wrapper.find(<span class="hljs-string">\'div\'</span>).html()).to.equal(<span class="hljs-string">\'&lt;p&gt;Title&lt;/p&gt;\'</span>);
</code></pre>
  <h2 id="usingtheallpowerfulfindfunction">Using the all-powerful find function</h2>
  <p class="selectionShareable">Enzyme uses cheeriojs – a small library that implements a subset of jQuery’s core functionalities and makes manipulating components simple. The <code>find()</code> function, used in the example above, can be applied to HTML, JSX and CSS alike – this is key to Enzyme; It gives you the ability to target DOM elements in a clear and concise manner. Here are a few examples of how it can be applied:</p>
  <pre><code class="javascript language-javascript hljs">componentToTest.find(<span class="hljs-string">\'div\'</span>); <span class="hljs-comment">// On HTML tags</span>
componentToTest.find(<span class="hljs-string">\'.pretty &gt; .red-row\'</span>); <span class="hljs-comment">// On CSS selectors</span>
componentToTest.find(<span class="hljs-string">\'div .nice-style\'</span>); <span class="hljs-comment">// Both !</span>
componentToTest.find(<span class="hljs-string">\'label[visible=true]\'</span>); <span class="hljs-comment">// On properties</span>
</code></pre>
  <h2 id="thedifferentrenderingmodes">The different rendering modes</h2>
  <p class="selectionShareable">
    <a href="http://www.theodo.fr/uploads/blog//2017/04/test.png" class="fluidbox fluidbox-closed" id="fluidbox-1">
  <div class="fluidbox-wrap" style="z-index: 990;"><img src="http://www.theodo.fr/uploads/blog//2017/04/test.png" alt="test" width="890" height="325" class="alignnone size-full wp-image-8257" style="opacity: 1;"><div class="fluidbox-ghost" style="width: 740px; height: 270px; top: 0px; left: 0px;"></div><div class="fluidbox-loader"></div></div></a></p>
  <p class="selectionShareable">To understand Enzyme’s key strengths, let’s dive a little into how it simulates components and DOM elements. Although based off <code>react-test-utils</code>, there is enough abstraction that the rendering of a component comes down to 3 functions – shallow, mount and render. Basically ;</p>
  <ul>
    <li>
      <p class="selectionShareable"><strong>Shallow rendering</strong> : Is useful to test a component in isolation of every other. In the typical React pattern of smart and dumb components, shallow rendering is usually used to test ‘dumb’ components (stateless components) in terms of their props and the events that can be simulated.</p>
    </li>
    <li>
      <p class="selectionShareable"><strong>Mounting</strong> : Also known as full DOM rendering, it allows you to render a part of the DOM tree and it also gives you access to the lifecycle methods of React components (<code>ComponentWillMount</code>, <code>ComponentWillReceiveProps</code> , etc…)</p>
    </li>
    <li>
      <p class="selectionShareable"><strong>Static rendering</strong> : Is sparsely used but when it is the case, serves as means of testing plain JSX / HTML.</p>
    </li>
  </ul>
  <h2 id="priorknowledge">Prior knowledge</h2>
  <p class="selectionShareable">This article assumes a classic React stack making use of npm scripts, <a href="http://www.theodo.fr/blog/2016/07/a-comprehensive-introduction-to-webpack-the-module-bundler/">webpack</a> as a module bundler along with ES6 syntax and it will detail a simple approach to testing your React application.</p>
  <p class="selectionShareable">You may also want to have a quick look at this article if your application uses Redux (<a href="http://www.theodo.fr/blog/2016/03/getting-started-with-react-redux-and-immutable-a-test-driven-tutorial-part-1/">link to the article</a>), as it is a common library used in React applications and knowing how to test it may be helpful, in complement to what is explored in this article.</p>
  <p class="selectionShareable">Enjoy!</p>
  <h2 id="setup">Setup</h2>
  <p class="selectionShareable">Enzyme is completely agnostic to the test runner and assertion libraries that you use; it works with mocha, AVA, Jest… you choose! In this article we will use, without going into too much detail, the following testing tools – so you can keep using your favourites, for me it’s:</p>
  <ul>
    <li>Jest as the test runner (although it also handles assertions and spies, I still want to use chai and sinon alongside it because of the syntaxic addons with chai-enzyme and sinon-chai).</li>
    <li>Chai as the assertion library.</li>
    <li>Sinon for mocks, stubs and test spies.</li>
  </ul>
  <p class="selectionShareable">For jest the setup is simple, just remember to suffix your test files with <code>.test.js</code> (default configuration):</p>
  <pre><code class="bash language-bash hljs">npm install --save-dev jest
</code></pre>
  <p class="selectionShareable">And add the following scripts to your <code>package.json</code> scripts object :</p>
  <pre><code class="json language-json hljs"><span class="hljs-string">"client:test"</span>: <span class="hljs-string">"NODE_ENV=test jest"</span>,
<span class="hljs-string">"client:test:watch"</span>: <span class="hljs-string">"NODE_ENV=test jest --watch"</span>
</code></pre>
  <p class="selectionShareable">Along with an object at the root of the <code>package.json</code> with <code>jest</code> as a key that configures the jest testing tool (I’ll just include a few key options):</p>
  <pre><code class="json language-json hljs"><span class="hljs-string">"jest"</span>: {
    <span class="hljs-attr">"rootDir"</span>: <span class="hljs-string">"./client/src"</span>,
    <span class="hljs-attr">"moduleNameMapper"</span>: {
        <span class="hljs-attr">"^.+\\.(css|less)$"</span>: <span class="hljs-string">"&lt;rootDir&gt;/CSSStub.js"</span>
    },
    <span class="hljs-attr">"collectCoverage"</span>: <span class="hljs-literal">true</span>,
    <span class="hljs-attr">"coverageDirectory"</span>: <span class="hljs-string">"&lt;rootDir&gt;/../../coverage"</span>,
    <span class="hljs-attr">"verbose"</span>: <span class="hljs-literal">true</span>,
    <span class="hljs-attr">"coveragePathIgnorePatterns"</span>: [
        <span class="hljs-string">"&lt;rootDir&gt;/../../node_modules/"</span>
    ]
}
</code></pre>
  <p class="selectionShareable"><strong>Important</strong>: The moduleNameMapper options allows you to mock a module for files that match a particular extension. In projects using webpack it is quite typical to load css inline using the webpack <code>css-loader</code>. The problem is Jest doesn’t know how to interpret the css , so instead make a stub that resolves all inline styles to an empty object contained in <code>&lt;rootDir&gt;/CSSStub.js</code></p>
  <p class="selectionShareable">Also don’t forget to include these libraries of course!</p>
  <pre><code class="bash language-bash hljs">npm install --save-dev enzyme chai-enzyme sinon
</code></pre>
  <h2 id="shallowrenderandtheenzymeapiingeneral">Shallow render and the enzyme API in general</h2>
  <p class="selectionShareable">A shallow rendered and a mounted component, have the same methods exposed but different use cases (as in, you will find the same API in the Enzyme docs for both). As a rule of thumb, shallow render is for unit testing and will probably be used for the majority of your test cases. Mounting would be more for a form of ‘front-end integration testing’ (seeing how a change in one component propagates to other components lower in the DOM tree).</p>
  <h3 id="testingyourcomponentintermsofdata">Testing your component in terms of data</h3>
  <p class="selectionShareable">Let’s use a small snippet of code that renders a rectangle of a certain color, some text and a checkbox. Not an enthralling example, but a useful one in showing how enzyme works.</p>
  <pre><code class="javascript language-javascript hljs"><span class="hljs-keyword">import</span> React, { PureComponent } <span class="hljs-keyword">from</span> <span class="hljs-string">\'react\'</span>;

<span class="hljs-class"><span class="hljs-keyword">class</span> <span class="hljs-title">ColoredRectangleComponent</span> <span class="hljs-keyword">extends</span> <span class="hljs-title">PureComponent</span> </span>{
  render() {
    <span class="hljs-keyword">return</span> (
      <span class="xml"><span class="hljs-tag">&lt;<span class="hljs-name">div</span> <span class="hljs-attr">className</span>=<span class="hljs-string">{this.props.elementClass}</span>&gt;</span>
        {`Square text : ${this.props.text}`}
        <span class="hljs-tag">&lt;<span class="hljs-name">input</span>
          <span class="hljs-attr">type</span>=<span class="hljs-string">"checkbox"</span>
          <span class="hljs-attr">id</span>=<span class="hljs-string">"checked"</span>
          <span class="hljs-attr">value</span>=<span class="hljs-string">"active"</span>
          <span class="hljs-attr">checked</span>=<span class="hljs-string">"checked"</span>
          <span class="hljs-attr">onClick</span>=<span class="hljs-string">{(event)</span> =&gt;</span> { this.props.onCheckboxChange(event); }}
        /&gt;
      <span class="hljs-tag">&lt;/<span class="hljs-name">div</span>&gt;</span>
    );
  }
}

export default ColoredRectangleComponent;
</span></code></pre>
  <p class="selectionShareable">We want to test three things to begin with; we expect a div, with the correct class and some text. Note that once you have rendered a component for the test, you can easily control the data it handles with <code>setProps()</code> and <code>setState()</code>. You can also access the props and state of a component with <code>props()</code> and <code>state()</code>. This is particularly interesting when testing different outcomes in your component’s display (for instance; hiding part of a component, checking if an error label appears, etc…).</p>
  <pre><code class="javascript language-javascript hljs"><span class="hljs-keyword">import</span> React <span class="hljs-keyword">from</span> <span class="hljs-string">\'react\'</span>;
<span class="hljs-keyword">import</span> chai, { expect } <span class="hljs-keyword">from</span> <span class="hljs-string">\'chai\'</span>;
<span class="hljs-keyword">import</span> chaiEnzyme <span class="hljs-keyword">from</span> <span class="hljs-string">\'chai-enzyme\'</span>;
<span class="hljs-keyword">import</span> { shallow } <span class="hljs-keyword">from</span> <span class="hljs-string">\'enzyme\'</span>;
<span class="hljs-keyword">import</span> sinon <span class="hljs-keyword">from</span> <span class="hljs-string">\'sinon\'</span>;
<span class="hljs-keyword">import</span> ColoredRectangleComponent <span class="hljs-keyword">from</span> <span class="hljs-string">\'./enzyme\'</span>;

chai.use(chaiEnzyme());

<span class="hljs-keyword">const</span> clickSpy = sinon.spy();
<span class="hljs-keyword">const</span> props = {
  checked: <span class="hljs-literal">true</span>,
  elementClass: <span class="hljs-string">\'red-square\'</span>,
  text: <span class="hljs-string">\'Enzyme rocks\'</span>,
  onCheckboxChange: clickSpy,
};

<span class="hljs-keyword">const</span> container = shallow(&lt;ColoredRectangleComponent {...props} /&gt;);

describe(\'tests for &lt;ColoredRectangleComponent&gt; container\', () =&gt; {
  it(\'should render one div\', () =&gt; {
    // You can target DOM, its children(), or an element at() a position
    expect(container.find(\'div\').length).to.equal(1);
  });

  it(\'should render one div with the correct class applied\', () =&gt; {
    expect(container.find(\'div\').hasClass(\'red-square\')).to.equal(true);
  });

  it(\'should contain the text passed as props\', () =&gt; {
        expect(container.text()).to.equal(\'Square text : Enzyme rocks\');
        // Here is an alternative making use of html()
        expect(container.find(\'p\').html()).to.equal(\'&lt;p&gt;Square text : Enzyme rocks&lt;/p&gt;\');
  });

    [...]
</code></pre>
  <h3 id="testingyourcomponentintermsofevents">Testing your component in terms of events</h3>
  <p class="selectionShareable">You are going to want to simulate user interactions with your component. This is where chai-enzyme steps in to provide a variety of assertion addons that will simplify your test syntax. As we are using a checkbox, a quick look at the docs tell us that we are interested by <code>(not.?)to.be.checked()</code>.</p>
  <pre><code class="javascript language-javascript hljs">    [...]

    it(<span class="hljs-string">\'should render a checked checkbox if prop value is true\'</span>, () =&gt; {
        expect(container.find(<span class="hljs-string">\'#checked\'</span>)).to.be.checked();
    });

    [...]
</code></pre>
  <p class="selectionShareable">If we refer back to our tested component, a function is passed down through props and should be triggered upon clicking the element it is bound to (in this case the input tag). For the moment, event propagation and more complex mouse interactions are actively being developped but most use cases are already covered.</p>
  <pre><code class="javascript language-javascript hljs">    [...]

    it(<span class="hljs-string">\'should trigger onCheckboxChange when simulating a click event on checkbox\'</span>, () =&gt; {
    container.find(<span class="hljs-string">\'#checked\'</span>).simulate(<span class="hljs-string">\'click\'</span>);
    expect(clickSpy.calledOnce).to.equal(<span class="hljs-literal">true</span>);
  });

});
</code></pre>
  <h2 id="mountingacomponent">Mounting a component</h2>
  <p class="selectionShareable">There may be instances where you don’t want to fully mount a part of the DOM just to test one nested component inside a <code>shallowRendered</code> component. In this case use <code>dive()</code> – but for every other complex case where several nested components need to be tested together, use mount. Let’s have a look at a parent component that makes use of our ColoredRectangleComponent:</p>
  <pre><code class="javascript language-javascript hljs"><span class="hljs-keyword">import</span> React, { Component } <span class="hljs-keyword">from</span> <span class="hljs-string">\'react\'</span>;
<span class="hljs-keyword">import</span> _ <span class="hljs-keyword">from</span> <span class="hljs-string">\'lodash\'</span>;
<span class="hljs-keyword">import</span> ColoredRectangleComponent <span class="hljs-keyword">from</span> <span class="hljs-string">\'./enzyme\'</span>;

<span class="hljs-class"><span class="hljs-keyword">class</span> <span class="hljs-title">Parent</span> <span class="hljs-keyword">extends</span> <span class="hljs-title">Component</span> </span>{
  <span class="hljs-keyword">constructor</span>(props) {
    <span class="hljs-keyword">super</span>(props);
    <span class="hljs-keyword">this</span>.state = {
      squareList: [
        {
          text: <span class="hljs-string">\'number 1\'</span>,
          checked: <span class="hljs-literal">true</span>,
          elementClass: <span class="hljs-string">\'red\'</span>,
        },
        {
          text: <span class="hljs-string">\'number 2\'</span>,
          checked: <span class="hljs-literal">false</span>,
          elementClass: <span class="hljs-string">\'blue\'</span>,
        },
      ],
    };
  }

  componentDidMount() {}

  render() {
    <span class="hljs-keyword">return</span> (
      <span class="xml"><span class="hljs-tag">&lt;<span class="hljs-name">div</span> &gt;</span>
        {_.map(this.state.squareList, (square, index) =&gt; {
          return (
            <span class="hljs-tag">&lt;<span class="hljs-name">ColoredRectangleComponent</span>
              <span class="hljs-attr">key</span>=<span class="hljs-string">{index}</span>
              <span class="hljs-attr">checked</span>=<span class="hljs-string">{square.checked}</span>
              <span class="hljs-attr">elementClass</span>=<span class="hljs-string">{square.elementClass}</span>
              <span class="hljs-attr">text</span>=<span class="hljs-string">{square.text}</span>
              <span class="hljs-attr">onCheckboxChange</span>=<span class="hljs-string">{()</span> =&gt;</span> { return null; }}
            /&gt;
          );
        })}
      <span class="hljs-tag">&lt;/<span class="hljs-name">div</span>&gt;</span>
    );
  }
}

export default Parent;
</span></code></pre>
  <p class="selectionShareable">Again we’ll have a look into two simple test cases; checking if the component does mount and whether or not it renders components correctly according to its state. We are expecting 2 ColoredRectangle components with the correct css classes attributed to them.</p>
  <pre><code class="javascript language-javascript hljs"><span class="hljs-keyword">import</span> React <span class="hljs-keyword">from</span> <span class="hljs-string">\'react\'</span>;
<span class="hljs-keyword">import</span> { expect } <span class="hljs-keyword">from</span> <span class="hljs-string">\'chai\'</span>;
<span class="hljs-keyword">import</span> { mount } <span class="hljs-keyword">from</span> <span class="hljs-string">\'enzyme\'</span>;
<span class="hljs-keyword">import</span> sinon <span class="hljs-keyword">from</span> <span class="hljs-string">\'sinon\'</span>;

<span class="hljs-keyword">import</span> Parent <span class="hljs-keyword">from</span> <span class="hljs-string">\'./parent\'</span>;
<span class="hljs-keyword">import</span> ColoredRectangleComponent <span class="hljs-keyword">from</span> <span class="hljs-string">\'./enzyme\'</span>;


describe(<span class="hljs-string">\'tests for &lt;Parent&gt; container\'</span>, () =&gt; {
  it(<span class="hljs-string">\'should test that the component mounts\'</span>, () =&gt; {
    sinon.spy(Parent.prototype, <span class="hljs-string">\'componentDidMount\'</span>);
    <span class="hljs-keyword">const</span> container = mount(<span class="xml"><span class="hljs-tag">&lt;<span class="hljs-name">Parent</span> /&gt;</span>);
    expect(Parent.prototype.componentDidMount.calledOnce).to.equal(true);
  });

  it(\'should render 2 squares with the correct classes\', () =&gt; {
    const container = mount(<span class="hljs-tag">&lt;<span class="hljs-name">Parent</span> /&gt;</span>);
    const expectedClassNamesList = [\'red\', \'blue\'];

    expect(container.find(ColoredRectangleComponent).length).to.equal(2);
    container.find(\'div\').forEach((node, index) =&gt; {
      expect(node.hasClass(expectedClassNamesList[index]));
    });
  });
});
</span></code></pre>
<h2 id="conclusion">Conclusion</h2>
<p class="selectionShareable">The tools provided by enzyme make testing React applications easy with a minimal setup cost. The documentation  is simple and well illustrated with many examples and different tips. Finally, if you need to debug a component, Enzyme also integrates a debug tool that quite simply prints the rendered element to the console as JSX. Just use <code>console.log(container.debug())</code>. Happy testing !</p>
<p class="selectionShareable">Useful links :</p>
<ul>
<li><a href="http://airbnb.io/enzyme/docs/api/" onclick="__gaTracker(\'send\', \'event\', \'outbound-article\', \'http://airbnb.io/enzyme/docs/api/\', \'Enzyme docs\');">Enzyme docs</a></li>
<li><a href="https://facebook.github.io/jest/docs/getting-started.html" onclick="__gaTracker(\'send\', \'event\', \'outbound-article\', \'https://facebook.github.io/jest/docs/getting-started.html\', \'Jest docs\');">Jest docs</a></li>
<li><a href="https://github.com/producthunt/chai-enzyme" onclick="__gaTracker(\'send\', \'event\', \'outbound-article\', \'https://github.com/producthunt/chai-enzyme\', \'Chai enzyme\');">Chai enzyme</a></li>
</ul>
',
174
);

INSERT INTO article_tag (article_id, tag_id) VALUES
(7244, 1),
(8253, 1);
