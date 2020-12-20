import React from 'react'
const { useQuery, gql } = require("@apollo/client");

const USERS = gql`
query MyQuery {
    ctos {
      id
      last_name
      first_name
    }
  }
  
`

function Users() {
    const { loading, error, data } = useQuery(USERS);

    if (loading) {
        return (
            <div>
                🔃
            </div>
        )
    }

    if (error) {
        return (
            <div>
                🛑
            </div>
        )
    }

    return (
        <div>
            {
                data.ctos.map(({
                    id, first_name, last_name
                }) => (
                    <div key={id} style={{display: 'flex', flexWrap: 'nowrap'}}>
                        <h3 style={{marginRight: '10px'}}>{first_name}</h3>
                        <h4>{last_name}</h4>
                    </div>
                ))
            }
        </div>
    )
}

export default Users
