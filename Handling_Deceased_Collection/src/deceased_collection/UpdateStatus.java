package deceased_collection;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/updateStatus")
public class UpdateStatus extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Collector c;

	public UpdateStatus() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		CollectorDAO cs = new take_action();
		String cid = request.getParameter("cid");
		String lid = request.getParameter("lid");
		String aid = request.getParameter("aid");
		double amount = Double.parseDouble(request.getParameter("amount"));
		double selling_price = Double.parseDouble(request.getParameter("selling_price"));
		double collateral_info = Double.parseDouble(request.getParameter("collateral_info"));
		String submitType = request.getParameter("submit");
		setC(new Collector());
		setC(cs.getCollector(cid, lid, aid, amount, selling_price, collateral_info));
		if (submitType.equals("Submit")) {
			request.setAttribute("message",
					"Data Entry Successful! Loan amount reduced by: " + amount + " for Customer ID: " + cid);
			request.getRequestDispatcher("updateStatus.jsp").forward(request, response);
		} else {
			request.setAttribute("message", "Data Not Found!");
			request.getRequestDispatcher("UpdateStatus.jsp").forward(request, response);
		}
	}

	public Collector getC() {
		return c;
	}

	public void setC(Collector c) {
		this.c = c;
	}

}
