<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:forEach items="${LIST_ADVERTISE}" var="item">
    <div class="adv">
        <div class="adv-title bold">${item.title}</div>
        <div class="adv-content">
            ${item.content}
        </div>
    </div>
</c:forEach>