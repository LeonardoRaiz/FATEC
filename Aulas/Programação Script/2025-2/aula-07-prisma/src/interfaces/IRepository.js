class IRepository {
    create(data) {} //INSERT
    findAll(include) {} // SELECT * FROM
    findById(id, include) {} // SELECT * FROM WHERE ID =
    update(id, data) {} // UPDATE
    delete(id) {} // DELETE FROM
}

module.exports = IRepository;