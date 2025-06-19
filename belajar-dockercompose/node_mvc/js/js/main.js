$(document).ready(function () {
    $('#userTable').DataTable();
});

function openCreateModal() {
    $('#userForm').attr('action', '/create');
    $('#userId').val('');
    $('#userName').val('');
    $('#userEmail').val('');
    $('#userModal').show();
}

function openEditModal(user) {
    $('#userForm').attr('action', '/update');
    $('#userId').val(user.id);
    $('#userName').val(user.name);
    $('#userEmail').val(user.email);
    $('#userModal').show();
}

function closeModal() {
    $('#userModal').hide();
}
