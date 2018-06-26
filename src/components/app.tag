app
	h1 app.tag
	input(type='text' value='{text}'
		onChange='{onTextChange}' ref='input')
	button(onclick='{onClick}') add
	list(memos='{memos}')

	style.
		:scope {
			display: block;
			min-height: 100vh;
			background: wheat;
			padding: 1rem;
			> input, > button {
				font-size: 1.2rem;
				padding: 0.3rem;
			}
		}

	script.
		import list from './list'

		this.text = ''
		this.memos = []

		this.onTextChange = e => {
			this.text = e.target.value
		}

		this.onClick = e => {
			if (this.text.length === 0) {
				alert('empty !!')
			} else {
				this.memos.push(this.text)
				this.text = ''
			}
			this.refs.input.focus()
		}