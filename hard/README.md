#### Task-3: Propose a plan (no need to provide code but it is welcomed as example, no need to run it) to analyze issues to learn how to make high quality issues: What questions would be interesting? How would you answer them? (Critical thinking and independence)

  > Taking a few parameters under consideration after going through the database that should be used to analyze issues to learn how to make high-quality issues:

  Various factors can be taken under consideration to make high-quality issues for R-Core and new contributors like:
  
  There are many things which need to be considered to make a good high-quality issue. The motive of this task is to what makes a good bug report is also useful to help future users of bugRzilla write good issues and needed to know bugs more likely to be closed by the R-core without improving R and which are more likely to be well received.
  
  So, in order of that, we have to check all the ** components** on which most of the bug issues are created and then we have to look on the **Status** either the are (*closed, reopened, assigned, and so on*). After checking these two factors next factor which has to be checked is the **Resolution** i.e. under which category it falls. So taking all these factors under consideration we have to notify the R-Core members of the issue.
  
  Also, we want to encourage new contributors which can be done by checking the **Severity** and **Priority**. If the **Severity** is (*minor, normal, enhancement, so on*) then check the **Priority** if the less than P3 then assign the issue new contributors but if **Priority** is more or equal to P3 then send mail to R-core. But if the **Severity** is (*major, critical, blocker*) then it should be notified to R-Core.


For example-

  1. **Component**- We can create a bar graph and pie chats category wise to check on which category most of the issues are being created. Which will help us to know on which category more focus has to be given.
  2. **Changed**- In this, we can plot Time Series line graphs for reported and modified time. As well as, making it enable to see the plots for a 24 hours, a week, a month, and so on.
  3. **Tabular Reports**- The example discussed above, we can extract the data for visualization.
  
  For example-
    
  **Wishlist**: This component is the addition of a new feature taking this under consideration this issue can be assigned to new contributors but taking few factors that can be taken under-consideration for R-Core i.e. if **Priority** is more or equal to P3 and **Severity** (*critical, major, blocker*) then notify to the R-Core for the issue.


    issue <- get_but(1)
    comp <- issue$component
    if (comp = "wishlist"){
      prio <- issue$priority
      g1 <- issue$Severity
      if ((g1 == "minor" | g1 == "normal" | g1 == "enhancement") & (prio <- "P1" | prio <- "P2")){
        message("Less important!!")
      }
      if ((g1 == "critical" | g1 == "major" | g1 == "blocker") & (prio <- "P3" | prio <- "P4" | prio <- "P5")){
        message("Important!!")
      }
    }