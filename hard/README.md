#### Task-3: Propose a plan (no need to provide code but it is welcomed as example, no need to run it) to analyze issues to learn how to make high quality issues: What questions would be interesting? How would you answer them? (Critical thinking and independence)

 > Taking few parameters under-consideration after going through the database that should be used to analyze issues to learn how to make high quality issues:

  There are various factors which can be taken under-consideration to make high quality issues for R-Core and new contributors like:
  
  There are many things which needs to be consider to make a good high quality issue. The motive of this task is to what makes a good bug  report is also useful to help future users of bugRzilla write good issues and needed to know bugs more likely to be closed by the R-core without improving R and which are more likely to be well received.
  
  So, in order of that we have to check all the **component** on which most of the bug issues are created and then we have to look on the **Status** either the are (*closed, reopened, assigned and so on*). After checking these two factors next factor which has to be checked is the **Resolution** i.e. under which category it falls. So taking all these factors under-consideration we have to notify the R-Core members for the issue.
  
  In addition of it, we also want to encourage new contributors which can be done by checking the **Severity** and **Priority**. If the **Severity** is (*minor, normal, enhancement, so on*) then check the **Priority** if the less than P3 then assign the issue new contributors but if **Priority** is more or equal to P3 then send mail to R-core. But if the **Severity** is (*major, critical, blocker*) then it should be notified to R-Core.
  
  For example-
    
  **Wishlist**: This component are basically the addition of a new feature taking this under consideration this issue can be assigned to new contributors but taking few factors that which can be taken under-consideration for R-Core i.e. if **Priority** is more or equal to P3 and **Severity** (*critical, major, blocker*) then notify to the R-Core for the issue.

    issue <- get_but(1)
    comp <- issue$component
    if (comp = "wishlist"){
      prio <- issue$priority
      g1 <- issue$Severity
      if ((g1 == "minor" | g1 == "mnormal" | g1 == "enhancementr") & (prio <- "P1" | prio <- "P2")){
        message("can be assigned to new contributer")
      }
      if ((g1 == "critical" | g1 == "major" | g1 == "blocker") & (prio <- "P3" | prio <- "P4" | prio <- "P5")){
        message("notifiying to R-Core")
      }
    }