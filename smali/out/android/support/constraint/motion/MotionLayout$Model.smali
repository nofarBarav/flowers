.class Landroid/support/constraint/motion/MotionLayout$Model;
.super Ljava/lang/Object;
.source "MotionLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/motion/MotionLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Model"
.end annotation


# instance fields
.field mEnd:Landroid/support/constraint/ConstraintSet;

.field mEndId:I

.field mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

.field mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

.field mStart:Landroid/support/constraint/ConstraintSet;

.field mStartId:I

.field final synthetic this$0:Landroid/support/constraint/motion/MotionLayout;


# direct methods
.method constructor <init>(Landroid/support/constraint/motion/MotionLayout;)V
    .registers 2

    .line 1971
    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1972
    new-instance p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 1973
    new-instance p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    const/4 p1, 0x0

    .line 1974
    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mStart:Landroid/support/constraint/ConstraintSet;

    .line 1975
    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mEnd:Landroid/support/constraint/ConstraintSet;

    return-void
.end method

.method private debugLayout(Ljava/lang/String;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;)V
    .registers 13

    .line 2162
    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/support/constraint/motion/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  ========= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MotionLayout"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2165
    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getChildren()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_40
    if-ge v3, v1, :cond_11f

    .line 2167
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2168
    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getChildren()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 2170
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const-string v8, "_"

    if-eqz v7, :cond_7a

    const-string v7, "T"

    goto :goto_7b

    :cond_7a
    move-object v7, v8

    :goto_7b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2171
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_93

    const-string v6, "B"

    goto :goto_94

    :cond_93
    move-object v6, v8

    :goto_94
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2172
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_ac

    const-string v6, "L"

    goto :goto_ad

    :cond_ac
    move-object v6, v8

    :goto_ad
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2173
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_c4

    const-string v8, "R"

    :cond_c4
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2174
    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 2175
    invoke-static {v7}, Landroid/support/constraint/motion/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v8

    .line 2176
    instance-of v9, v7, Landroid/widget/TextView;

    if-eqz v9, :cond_f8

    .line 2177
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "("

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2179
    :cond_f8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_40

    .line 2181
    :cond_11f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " done. "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private debugLayoutParam(Ljava/lang/String;Landroid/support/constraint/ConstraintLayout$LayoutParams;)V
    .registers 7

    .line 2137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_12

    const-string v1, "SS"

    goto :goto_14

    :cond_12
    const-string v1, "__"

    :goto_14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    const-string v3, "|__"

    if-eq v0, v2, :cond_2c

    const-string v0, "|SE"

    goto :goto_2d

    :cond_2c
    move-object v0, v3

    :goto_2d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    if-eq v0, v2, :cond_43

    const-string v0, "|ES"

    goto :goto_44

    :cond_43
    move-object v0, v3

    :goto_44
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    if-eq v0, v2, :cond_5a

    const-string v0, "|EE"

    goto :goto_5b

    :cond_5a
    move-object v0, v3

    :goto_5b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    if-eq v0, v2, :cond_71

    const-string v0, "|LL"

    goto :goto_72

    :cond_71
    move-object v0, v3

    :goto_72
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    if-eq v0, v2, :cond_88

    const-string v0, "|LR"

    goto :goto_89

    :cond_88
    move-object v0, v3

    :goto_89
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    if-eq v0, v2, :cond_9f

    const-string v0, "|RL"

    goto :goto_a0

    :cond_9f
    move-object v0, v3

    :goto_a0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    if-eq v0, v2, :cond_b6

    const-string v0, "|RR"

    goto :goto_b7

    :cond_b6
    move-object v0, v3

    :goto_b7
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    if-eq v0, v2, :cond_cd

    const-string v0, "|TT"

    goto :goto_ce

    :cond_cd
    move-object v0, v3

    :goto_ce
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    if-eq v0, v2, :cond_e4

    const-string v0, "|TB"

    goto :goto_e5

    :cond_e4
    move-object v0, v3

    :goto_e5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    if-eq v0, v2, :cond_fb

    const-string v0, "|BT"

    goto :goto_fc

    :cond_fb
    move-object v0, v3

    :goto_fc
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    if-eq p2, v2, :cond_111

    const-string v3, "|BB"

    :cond_111
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MotionLayout"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private debugWidget(Ljava/lang/String;Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .registers 10

    .line 2154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const-string v2, "B"

    const-string v3, "T"

    const-string v4, "__"

    if-eqz v1, :cond_33

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v5, v6, :cond_2a

    move-object v5, v3

    goto :goto_2b

    :cond_2a
    move-object v5, v2

    :goto_2b
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_34

    :cond_33
    move-object v1, v4

    :goto_34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_64

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v5, v6, :cond_5c

    move-object v2, v3

    :cond_5c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_65

    :cond_64
    move-object v0, v4

    :goto_65
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const-string v2, "R"

    const-string v3, "L"

    if-eqz v0, :cond_9b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v5, v6, :cond_92

    move-object v5, v3

    goto :goto_93

    :cond_92
    move-object v5, v2

    :goto_93
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9c

    :cond_9b
    move-object v0, v4

    :goto_9c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_cb

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v4, v5, :cond_c4

    move-object v2, v3

    :cond_c4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_cb
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ---  "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MotionLayout"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setupConstraintWidget(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/ConstraintSet;)V
    .registers 15

    .line 2064
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 2065
    new-instance v7, Landroid/support/constraint/Constraints$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {v7, v0, v0}, Landroid/support/constraint/Constraints$LayoutParams;-><init>(II)V

    .line 2067
    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    const/4 v8, 0x0

    .line 2068
    invoke-virtual {v6, v8, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2069
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionLayout;->getId()I

    move-result v0

    invoke-virtual {v6, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2072
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getChildren()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 2073
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 2074
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v6, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_23

    .line 2077
    :cond_3d
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getChildren()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_45
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 2078
    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/view/View;

    .line 2079
    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p2, v0, v7}, Landroid/support/constraint/ConstraintSet;->applyToLayoutParams(ILandroid/support/constraint/ConstraintLayout$LayoutParams;)V

    .line 2081
    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/constraint/ConstraintSet;->getWidth(I)I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 2082
    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/constraint/ConstraintSet;->getHeight(I)I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 2083
    instance-of v0, v11, Landroid/support/constraint/ConstraintHelper;

    if-eqz v0, :cond_8a

    .line 2084
    move-object v0, v11

    check-cast v0, Landroid/support/constraint/ConstraintHelper;

    invoke-virtual {p2, v0, v10, v7, v6}, Landroid/support/constraint/ConstraintSet;->applyToHelper(Landroid/support/constraint/ConstraintHelper;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V

    .line 2085
    instance-of v0, v11, Landroid/support/constraint/Barrier;

    if-eqz v0, :cond_8a

    .line 2086
    move-object v0, v11

    check-cast v0, Landroid/support/constraint/Barrier;

    invoke-virtual {v0}, Landroid/support/constraint/Barrier;->validateParams()V

    .line 2096
    :cond_8a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_9a

    .line 2097
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionLayout;->getLayoutDirection()I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/support/constraint/Constraints$LayoutParams;->resolveLayoutDirection(I)V

    goto :goto_9d

    .line 2099
    :cond_9a
    invoke-virtual {v7, v8}, Landroid/support/constraint/Constraints$LayoutParams;->resolveLayoutDirection(I)V

    .line 2101
    :goto_9d
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    const/4 v1, 0x0

    move-object v2, v11

    move-object v3, v10

    move-object v4, v7

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Landroid/support/constraint/motion/MotionLayout;->access$800(Landroid/support/constraint/motion/MotionLayout;ZLandroid/view/View;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V

    .line 2102
    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/constraint/ConstraintSet;->getVisibilityMode(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_ba

    .line 2103
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVisibility(I)V

    goto :goto_45

    .line 2105
    :cond_ba
    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/constraint/ConstraintSet;->getVisibility(I)I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVisibility(I)V

    goto/16 :goto_45

    .line 2108
    :cond_c7
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getChildren()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_cf
    :goto_cf
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 2109
    instance-of v1, v0, Landroid/support/constraint/solver/widgets/VirtualLayout;

    if-eqz v1, :cond_cf

    .line 2110
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/ConstraintHelper;

    .line 2111
    check-cast v0, Landroid/support/constraint/solver/widgets/Helper;

    .line 2112
    invoke-virtual {v1, p1, v0, v6}, Landroid/support/constraint/ConstraintHelper;->updatePreLayout(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/widgets/Helper;Landroid/util/SparseArray;)V

    .line 2113
    check-cast v0, Landroid/support/constraint/solver/widgets/VirtualLayout;

    .line 2114
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/VirtualLayout;->captureWidgets()V

    goto :goto_cf

    :cond_f0
    return-void
.end method


# virtual methods
.method public build()V
    .registers 11

    .line 2265
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionLayout;->getChildCount()I

    move-result v0

    .line 2266
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget-object v1, v1, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v0, :cond_26

    .line 2269
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v3, v2}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2270
    new-instance v4, Landroid/support/constraint/motion/MotionController;

    invoke-direct {v4, v3}, Landroid/support/constraint/motion/MotionController;-><init>(Landroid/view/View;)V

    .line 2272
    iget-object v5, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget-object v5, v5, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_26
    :goto_26
    if-ge v1, v0, :cond_d4

    .line 2275
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v2, v1}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2276
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget-object v3, v3, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/motion/MotionController;

    if-nez v3, :cond_3c

    goto/16 :goto_d0

    .line 2280
    :cond_3c
    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mStart:Landroid/support/constraint/ConstraintSet;

    const-string v5, ")"

    const-string v6, " ("

    const-string v7, "no widget for  "

    const-string v8, "MotionLayout"

    if-eqz v4, :cond_8a

    .line 2281
    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p0, v4, v2}, Landroid/support/constraint/motion/MotionLayout$Model;->getWidget(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    if-eqz v4, :cond_56

    .line 2283
    iget-object v9, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mStart:Landroid/support/constraint/ConstraintSet;

    invoke-virtual {v3, v4, v9}, Landroid/support/constraint/motion/MotionController;->setStartState(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/ConstraintSet;)V

    goto :goto_8a

    .line 2285
    :cond_56
    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v4, v4, Landroid/support/constraint/motion/MotionLayout;->mDebugPath:I

    if-eqz v4, :cond_8a

    .line 2286
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/support/constraint/motion/Debug;->getLocation()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/support/constraint/motion/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2290
    :cond_8a
    :goto_8a
    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mEnd:Landroid/support/constraint/ConstraintSet;

    if-eqz v4, :cond_d0

    .line 2291
    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p0, v4, v2}, Landroid/support/constraint/motion/MotionLayout$Model;->getWidget(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    if-eqz v4, :cond_9c

    .line 2293
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mEnd:Landroid/support/constraint/ConstraintSet;

    invoke-virtual {v3, v4, v2}, Landroid/support/constraint/motion/MotionController;->setEndState(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/ConstraintSet;)V

    goto :goto_d0

    .line 2295
    :cond_9c
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v3, v3, Landroid/support/constraint/motion/MotionLayout;->mDebugPath:I

    if-eqz v3, :cond_d0

    .line 2296
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/support/constraint/motion/Debug;->getLocation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/support/constraint/motion/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d0
    :goto_d0
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_26

    :cond_d4
    return-void
.end method

.method copy(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;)V
    .registers 7

    .line 1980
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getChildren()Ljava/util/ArrayList;

    move-result-object v0

    .line 1981
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1982
    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1983
    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getChildren()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1984
    invoke-virtual {p2, p1, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->copy(Landroid/support/constraint/solver/widgets/ConstraintWidget;Ljava/util/HashMap;)V

    .line 1985
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1987
    instance-of v3, v2, Landroid/support/constraint/solver/widgets/Barrier;

    if-eqz v3, :cond_30

    .line 1988
    new-instance v3, Landroid/support/constraint/solver/widgets/Barrier;

    invoke-direct {v3}, Landroid/support/constraint/solver/widgets/Barrier;-><init>()V

    goto :goto_53

    .line 1989
    :cond_30
    instance-of v3, v2, Landroid/support/constraint/solver/widgets/Guideline;

    if-eqz v3, :cond_3a

    .line 1990
    new-instance v3, Landroid/support/constraint/solver/widgets/Guideline;

    invoke-direct {v3}, Landroid/support/constraint/solver/widgets/Guideline;-><init>()V

    goto :goto_53

    .line 1991
    :cond_3a
    instance-of v3, v2, Landroid/support/constraint/solver/widgets/Flow;

    if-eqz v3, :cond_44

    .line 1992
    new-instance v3, Landroid/support/constraint/solver/widgets/Flow;

    invoke-direct {v3}, Landroid/support/constraint/solver/widgets/Flow;-><init>()V

    goto :goto_53

    .line 1993
    :cond_44
    instance-of v3, v2, Landroid/support/constraint/solver/widgets/Helper;

    if-eqz v3, :cond_4e

    .line 1994
    new-instance v3, Landroid/support/constraint/solver/widgets/HelperWidget;

    invoke-direct {v3}, Landroid/support/constraint/solver/widgets/HelperWidget;-><init>()V

    goto :goto_53

    .line 1996
    :cond_4e
    new-instance v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-direct {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;-><init>()V

    .line 1998
    :goto_53
    invoke-virtual {p2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->add(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 1999
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    .line 2001
    :cond_5a
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_74

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 2002
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v0, p2, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->copy(Landroid/support/constraint/solver/widgets/ConstraintWidget;Ljava/util/HashMap;)V

    goto :goto_5e

    :cond_74
    return-void
.end method

.method getWidget(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .registers 7

    .line 2120
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_7

    return-object p1

    .line 2123
    :cond_7
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getChildren()Ljava/util/ArrayList;

    move-result-object p1

    .line 2124
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_22

    .line 2126
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 2127
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p2, :cond_1f

    return-object v2

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_22
    const/4 p1, 0x0

    return-object p1
.end method

.method initFrom(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/ConstraintSet;Landroid/support/constraint/ConstraintSet;)V
    .registers 8

    .line 2007
    iput-object p2, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mStart:Landroid/support/constraint/ConstraintSet;

    .line 2008
    iput-object p3, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mEnd:Landroid/support/constraint/ConstraintSet;

    .line 2009
    new-instance p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 2010
    new-instance p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 2011
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-static {v0}, Landroid/support/constraint/motion/MotionLayout;->access$200(Landroid/support/constraint/motion/MotionLayout;)Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMeasurer(Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 2012
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-static {v0}, Landroid/support/constraint/motion/MotionLayout;->access$300(Landroid/support/constraint/motion/MotionLayout;)Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMeasurer(Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 2013
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->removeAllChildren()V

    .line 2014
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->removeAllChildren()V

    .line 2015
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-static {p1}, Landroid/support/constraint/motion/MotionLayout;->access$400(Landroid/support/constraint/motion/MotionLayout;)Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-result-object p1

    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p0, p1, v0}, Landroid/support/constraint/motion/MotionLayout$Model;->copy(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;)V

    .line 2016
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-static {p1}, Landroid/support/constraint/motion/MotionLayout;->access$500(Landroid/support/constraint/motion/MotionLayout;)Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-result-object p1

    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p0, p1, v0}, Landroid/support/constraint/motion/MotionLayout$Model;->copy(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;)V

    .line 2017
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget p1, p1, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double p1, v0, v2

    if-lez p1, :cond_68

    if-eqz p2, :cond_62

    .line 2019
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {p0, p1, p2}, Landroid/support/constraint/motion/MotionLayout$Model;->setupConstraintWidget(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/ConstraintSet;)V

    .line 2021
    :cond_62
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {p0, p1, p3}, Landroid/support/constraint/motion/MotionLayout$Model;->setupConstraintWidget(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/ConstraintSet;)V

    goto :goto_74

    .line 2023
    :cond_68
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {p0, p1, p3}, Landroid/support/constraint/motion/MotionLayout$Model;->setupConstraintWidget(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/ConstraintSet;)V

    if-eqz p2, :cond_74

    .line 2025
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {p0, p1, p2}, Landroid/support/constraint/motion/MotionLayout$Model;->setupConstraintWidget(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/ConstraintSet;)V

    .line 2032
    :cond_74
    :goto_74
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object p2, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-static {p2}, Landroid/support/constraint/motion/MotionLayout;->access$600(Landroid/support/constraint/motion/MotionLayout;)Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setRtl(Z)V

    .line 2033
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->updateHierarchy()V

    .line 2042
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object p2, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-static {p2}, Landroid/support/constraint/motion/MotionLayout;->access$700(Landroid/support/constraint/motion/MotionLayout;)Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setRtl(Z)V

    .line 2043
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->updateHierarchy()V

    .line 2050
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_c1

    .line 2052
    iget p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 p3, -0x2

    if-ne p2, p3, :cond_af

    .line 2053
    iget-object p2, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p2, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 2054
    iget-object p2, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p2, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 2056
    :cond_af
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne p1, p3, :cond_c1

    .line 2057
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    sget-object p2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p1, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 2058
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    sget-object p2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p1, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    :cond_c1
    return-void
.end method

.method public isNotConfiguredWith(II)Z
    .registers 4

    .line 2309
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mStartId:I

    if-ne p1, v0, :cond_b

    iget p1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mEndId:I

    if-eq p2, p1, :cond_9

    goto :goto_b

    :cond_9
    const/4 p1, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p1, 0x1

    :goto_c
    return p1
.end method

.method public measure(II)V
    .registers 16

    .line 2190
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2191
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 2193
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iput v0, v2, Landroid/support/constraint/motion/MotionLayout;->mWidthMeasureMode:I

    .line 2194
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iput v1, v2, Landroid/support/constraint/motion/MotionLayout;->mHeightMeasureMode:I

    .line 2195
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v2}, Landroid/support/constraint/motion/MotionLayout;->getOptimizationLevel()I

    move-result v2

    .line 2197
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v3, v3, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v4}, Landroid/support/constraint/motion/MotionLayout;->getStartState()I

    move-result v4

    if-ne v3, v4, :cond_35

    .line 2198
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-static {v3, v4, v2, p1, p2}, Landroid/support/constraint/motion/MotionLayout;->access$1200(Landroid/support/constraint/motion/MotionLayout;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V

    .line 2199
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mStart:Landroid/support/constraint/ConstraintSet;

    if-eqz v3, :cond_47

    .line 2200
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-static {v3, v4, v2, p1, p2}, Landroid/support/constraint/motion/MotionLayout;->access$1300(Landroid/support/constraint/motion/MotionLayout;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V

    goto :goto_47

    .line 2203
    :cond_35
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mStart:Landroid/support/constraint/ConstraintSet;

    if-eqz v3, :cond_40

    .line 2204
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-static {v3, v4, v2, p1, p2}, Landroid/support/constraint/motion/MotionLayout;->access$1400(Landroid/support/constraint/motion/MotionLayout;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V

    .line 2206
    :cond_40
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-static {v3, v4, v2, p1, p2}, Landroid/support/constraint/motion/MotionLayout;->access$1500(Landroid/support/constraint/motion/MotionLayout;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V

    .line 2215
    :cond_47
    :goto_47
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v3}, Landroid/support/constraint/motion/MotionLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/support/constraint/motion/MotionLayout;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_5b

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v0, v3, :cond_5b

    if-ne v1, v3, :cond_5b

    const/4 v3, 0x0

    goto :goto_5c

    :cond_5b
    const/4 v3, 0x1

    :goto_5c
    if-eqz v3, :cond_d9

    .line 2219
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iput v0, v3, Landroid/support/constraint/motion/MotionLayout;->mWidthMeasureMode:I

    .line 2220
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iput v1, v0, Landroid/support/constraint/motion/MotionLayout;->mHeightMeasureMode:I

    .line 2221
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v0, v0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v1}, Landroid/support/constraint/motion/MotionLayout;->getStartState()I

    move-result v1

    if-ne v0, v1, :cond_85

    .line 2222
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-static {v0, v1, v2, p1, p2}, Landroid/support/constraint/motion/MotionLayout;->access$1600(Landroid/support/constraint/motion/MotionLayout;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V

    .line 2223
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mStart:Landroid/support/constraint/ConstraintSet;

    if-eqz v0, :cond_97

    .line 2224
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-static {v0, v1, v2, p1, p2}, Landroid/support/constraint/motion/MotionLayout;->access$1700(Landroid/support/constraint/motion/MotionLayout;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V

    goto :goto_97

    .line 2227
    :cond_85
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mStart:Landroid/support/constraint/ConstraintSet;

    if-eqz v0, :cond_90

    .line 2228
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-static {v0, v1, v2, p1, p2}, Landroid/support/constraint/motion/MotionLayout;->access$1800(Landroid/support/constraint/motion/MotionLayout;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V

    .line 2230
    :cond_90
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-static {v0, v1, v2, p1, p2}, Landroid/support/constraint/motion/MotionLayout;->access$1900(Landroid/support/constraint/motion/MotionLayout;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V

    .line 2233
    :cond_97
    :goto_97
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/support/constraint/motion/MotionLayout;->mStartWrapWidth:I

    .line 2234
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/support/constraint/motion/MotionLayout;->mStartWrapHeight:I

    .line 2235
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/support/constraint/motion/MotionLayout;->mEndWrapWidth:I

    .line 2236
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/support/constraint/motion/MotionLayout;->mEndWrapHeight:I

    .line 2237
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v1, v0, Landroid/support/constraint/motion/MotionLayout;->mStartWrapWidth:I

    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v2, v2, Landroid/support/constraint/motion/MotionLayout;->mEndWrapWidth:I

    if-ne v1, v2, :cond_d6

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v1, v1, Landroid/support/constraint/motion/MotionLayout;->mStartWrapHeight:I

    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v2, v2, Landroid/support/constraint/motion/MotionLayout;->mEndWrapHeight:I

    if-eq v1, v2, :cond_d4

    goto :goto_d6

    :cond_d4
    const/4 v1, 0x0

    goto :goto_d7

    :cond_d6
    :goto_d6
    const/4 v1, 0x1

    :goto_d7
    iput-boolean v1, v0, Landroid/support/constraint/motion/MotionLayout;->mMeasureDuringTransition:Z

    .line 2241
    :cond_d9
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v0, v0, Landroid/support/constraint/motion/MotionLayout;->mStartWrapWidth:I

    .line 2242
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v1, v1, Landroid/support/constraint/motion/MotionLayout;->mStartWrapHeight:I

    .line 2243
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v2, v2, Landroid/support/constraint/motion/MotionLayout;->mWidthMeasureMode:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_ef

    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v2, v2, Landroid/support/constraint/motion/MotionLayout;->mWidthMeasureMode:I

    if-nez v2, :cond_106

    .line 2244
    :cond_ef
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v0, v0, Landroid/support/constraint/motion/MotionLayout;->mStartWrapWidth:I

    int-to-float v0, v0

    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v2, v2, Landroid/support/constraint/motion/MotionLayout;->mPostInterpolationPosition:F

    iget-object v6, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v6, v6, Landroid/support/constraint/motion/MotionLayout;->mEndWrapWidth:I

    iget-object v7, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v7, v7, Landroid/support/constraint/motion/MotionLayout;->mStartWrapWidth:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float v2, v2, v6

    add-float/2addr v0, v2

    float-to-int v0, v0

    :cond_106
    move v9, v0

    .line 2246
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v0, v0, Landroid/support/constraint/motion/MotionLayout;->mHeightMeasureMode:I

    if-eq v0, v3, :cond_113

    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v0, v0, Landroid/support/constraint/motion/MotionLayout;->mHeightMeasureMode:I

    if-nez v0, :cond_12a

    .line 2247
    :cond_113
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v0, v0, Landroid/support/constraint/motion/MotionLayout;->mStartWrapHeight:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v1, v1, Landroid/support/constraint/motion/MotionLayout;->mPostInterpolationPosition:F

    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v2, v2, Landroid/support/constraint/motion/MotionLayout;->mEndWrapHeight:I

    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v3, v3, Landroid/support/constraint/motion/MotionLayout;->mStartWrapHeight:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    float-to-int v1, v0

    :cond_12a
    move v10, v1

    .line 2250
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isWidthMeasuredTooSmall()Z

    move-result v0

    if-nez v0, :cond_13e

    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 2251
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isWidthMeasuredTooSmall()Z

    move-result v0

    if-eqz v0, :cond_13c

    goto :goto_13e

    :cond_13c
    const/4 v11, 0x0

    goto :goto_13f

    :cond_13e
    :goto_13e
    const/4 v11, 0x1

    .line 2252
    :goto_13f
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isHeightMeasuredTooSmall()Z

    move-result v0

    if-nez v0, :cond_152

    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 2253
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isHeightMeasuredTooSmall()Z

    move-result v0

    if-eqz v0, :cond_150

    goto :goto_152

    :cond_150
    const/4 v12, 0x0

    goto :goto_153

    :cond_152
    :goto_152
    const/4 v12, 0x1

    .line 2254
    :goto_153
    iget-object v6, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    move v7, p1

    move v8, p2

    invoke-static/range {v6 .. v12}, Landroid/support/constraint/motion/MotionLayout;->access$2000(Landroid/support/constraint/motion/MotionLayout;IIIIZZ)V

    return-void
.end method

.method public reEvaluateState()V
    .registers 3

    .line 2185
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-static {v0}, Landroid/support/constraint/motion/MotionLayout;->access$900(Landroid/support/constraint/motion/MotionLayout;)I

    move-result v0

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-static {v1}, Landroid/support/constraint/motion/MotionLayout;->access$1000(Landroid/support/constraint/motion/MotionLayout;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/constraint/motion/MotionLayout$Model;->measure(II)V

    .line 2186
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-static {v0}, Landroid/support/constraint/motion/MotionLayout;->access$1100(Landroid/support/constraint/motion/MotionLayout;)V

    return-void
.end method

.method public setMeasuredId(II)V
    .registers 3

    .line 2304
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mStartId:I

    .line 2305
    iput p2, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mEndId:I

    return-void
.end method
