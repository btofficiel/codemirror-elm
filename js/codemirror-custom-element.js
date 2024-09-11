import CodeMirror from 'codemirror';
import 'codemirror/lib/codemirror.css';
import 'codemirror/mode/javascript/javascript';

class CodeMirrorJsonViewer extends HTMLElement {
    constructor() {
    super();
    }

    connectedCallback() {
    this.innerHTML = `<div class="code-editor"></div>`;
    this.initializeCodeMirror();
    }

    initializeCodeMirror() {
    const jsonData = JSON.parse(this.getAttribute('json-data'));
    const width = this.getAttribute('width');
    const height = this.getAttribute('height');
    const jsonString = JSON.stringify(jsonData, null, 2);

    this.editor = CodeMirror(this.querySelector('.code-editor'), {
      value: jsonString,
      mode: 'application/json',
      readOnly: true,
      lineNumbers: true,
      lineWrapping: true,
      foldGutter: true
    });

    this.editor.setSize(width, height);
    }
}

customElements.define('codemirror-json-viewer', CodeMirrorJsonViewer);
