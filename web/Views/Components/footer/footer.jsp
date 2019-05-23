<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<footer>
    <div class="container">
        <div class="footer-page-counter">
            <c:forEach items="${PAGE_READ_COUNTER}" var="val">
                <span class="counter-item bold">${val}</span>
            </c:forEach>            
        </div>
    </div>
</footer>