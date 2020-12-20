import React from 'react'
import { ApolloProvider, ApolloClient, HttpLink, InMemoryCache } from '@apollo/client'
import Users from './components/Users'

const client = new ApolloClient({
  cache: new InMemoryCache(),
  link: new HttpLink({
    uri: 'http://localhost:8080/v1/graphql'
  })
})

const App = () => (
  <ApolloProvider client={client}>
    <div>
      Apollo Client 🚀
      <Users></Users>
    </div>
  </ApolloProvider>
)


export default App;
