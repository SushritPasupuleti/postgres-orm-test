import React from 'react'
import { ApolloProvider, ApolloClient, HttpLink, WebSocketLink, InMemoryCache } from '@apollo/client'
import Users from './components/Users'
import LiveUsers from './components/LiveUsers'
import SearchedUsers from './components/Search'

const client = new ApolloClient({
  cache: new InMemoryCache(),
  link: new HttpLink({
    uri: 'http://localhost:8080/v1/graphql'
  })
})

const App = () => (
  <ApolloProvider client={client}>
    <div style={{padding: '10px'}}>
      Apollo Client 🚀
      {/* <Users></Users> */}
      <SearchedUsers></SearchedUsers>
      <LiveUsers></LiveUsers>
    </div>
  </ApolloProvider>
)


export default App;
