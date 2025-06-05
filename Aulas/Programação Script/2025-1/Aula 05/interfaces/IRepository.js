class IRepository {
    create(data) {}
    findAll(include) {}
    findById(id, include) {}
    update(id, data) {}
    delete(id) {}
}

module.exports = IRepository;