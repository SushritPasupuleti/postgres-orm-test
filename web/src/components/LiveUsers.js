import React from 'react'
const { useQuery, gql } = require("@apollo/client");

const USERS = gql`
query LiveUsers {
        ctos(order_by: { first_name: asc }) {
        id
        last_name
        first_name
        skills
        }
  }
`

function Users() {
    const { loading, error, data } = useQuery(USERS, {
        pollInterval: 1000
    });

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
                    id, first_name, last_name, skills
                }) => (
                    <div key={id} style={{ display: 'flex', flexWrap: 'nowrap' }}>
                        <h3 style={{ marginRight: '10px' }}>{first_name}</h3>
                        <h4 style={{ marginRight: '10px' }}>{last_name}</h4>
                        <h5>{skills}</h5>
                    </div>
                ))
            }
        </div>
    )
}

export default Users
