module ApplicationHelper

	def page_title(company)
		if company
			"#{company.name} | Austin Tech Companies"
		else
			"Austin Tech Companies"
		end
	end
end
