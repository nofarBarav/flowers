.class public Landroid/support/constraint/ConstraintProperties;
.super Ljava/lang/Object;
.source "ConstraintProperties.java"


# static fields
.field public static final BASELINE:I = 0x5

.field public static final BOTTOM:I = 0x4

.field public static final END:I = 0x7

.field public static final LEFT:I = 0x1

.field public static final MATCH_CONSTRAINT:I = 0x0

.field public static final MATCH_CONSTRAINT_SPREAD:I = 0x0

.field public static final MATCH_CONSTRAINT_WRAP:I = 0x1

.field public static final PARENT_ID:I = 0x0

.field public static final RIGHT:I = 0x2

.field public static final START:I = 0x6

.field public static final TOP:I = 0x3

.field public static final UNSET:I = -0x1

.field public static final WRAP_CONTENT:I = -0x2


# instance fields
.field mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

.field mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 4

    .line 1033
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1034
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1035
    instance-of v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    if-eqz v1, :cond_12

    .line 1036
    check-cast v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 1037
    iput-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    return-void

    .line 1039
    :cond_12
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Only children of ConstraintLayout.LayoutParams supported"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private sideToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p1, :pswitch_data_1c

    const-string p1, "undefined"

    return-object p1

    :pswitch_6
    const-string p1, "end"

    return-object p1

    :pswitch_9
    const-string p1, "start"

    return-object p1

    :pswitch_c
    const-string p1, "baseline"

    return-object p1

    :pswitch_f
    const-string p1, "bottom"

    return-object p1

    :pswitch_12
    const-string p1, "top"

    return-object p1

    :pswitch_15
    const-string p1, "right"

    return-object p1

    :pswitch_18
    const-string p1, "left"

    return-object p1

    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public addToHorizontalChain(II)Landroid/support/constraint/ConstraintProperties;
    .registers 7

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-nez p1, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x2

    :goto_7
    const/4 v3, 0x0

    .line 739
    invoke-virtual {p0, v1, p1, v2, v3}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    if-nez p2, :cond_f

    const/4 v2, 0x2

    goto :goto_10

    :cond_f
    const/4 v2, 0x1

    .line 740
    :goto_10
    invoke-virtual {p0, v0, p2, v2, v3}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    if-eqz p1, :cond_31

    .line 742
    iget-object v2, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 743
    new-instance v2, Landroid/support/constraint/ConstraintProperties;

    invoke-direct {v2, p1}, Landroid/support/constraint/ConstraintProperties;-><init>(Landroid/view/View;)V

    .line 744
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {v2, v0, p1, v1, v3}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    :cond_31
    if-eqz p2, :cond_4f

    .line 747
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 748
    new-instance p2, Landroid/support/constraint/ConstraintProperties;

    invoke-direct {p2, p1}, Landroid/support/constraint/ConstraintProperties;-><init>(Landroid/view/View;)V

    .line 749
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p2, v1, p1, v0, v3}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    :cond_4f
    return-object p0
.end method

.method public addToHorizontalChainRTL(II)Landroid/support/constraint/ConstraintProperties;
    .registers 7

    const/4 v0, 0x7

    const/4 v1, 0x6

    if-nez p1, :cond_6

    const/4 v2, 0x6

    goto :goto_7

    :cond_6
    const/4 v2, 0x7

    :goto_7
    const/4 v3, 0x0

    .line 762
    invoke-virtual {p0, v1, p1, v2, v3}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    if-nez p2, :cond_f

    const/4 v2, 0x7

    goto :goto_10

    :cond_f
    const/4 v2, 0x6

    .line 763
    :goto_10
    invoke-virtual {p0, v0, p2, v2, v3}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    if-eqz p1, :cond_31

    .line 765
    iget-object v2, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 766
    new-instance v2, Landroid/support/constraint/ConstraintProperties;

    invoke-direct {v2, p1}, Landroid/support/constraint/ConstraintProperties;-><init>(Landroid/view/View;)V

    .line 767
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {v2, v0, p1, v1, v3}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    :cond_31
    if-eqz p2, :cond_4f

    .line 770
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 771
    new-instance p2, Landroid/support/constraint/ConstraintProperties;

    invoke-direct {p2, p1}, Landroid/support/constraint/ConstraintProperties;-><init>(Landroid/view/View;)V

    .line 772
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p2, v1, p1, v0, v3}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    :cond_4f
    return-object p0
.end method

.method public addToVerticalChain(II)Landroid/support/constraint/ConstraintProperties;
    .registers 7

    const/4 v0, 0x4

    const/4 v1, 0x3

    if-nez p1, :cond_6

    const/4 v2, 0x3

    goto :goto_7

    :cond_6
    const/4 v2, 0x4

    :goto_7
    const/4 v3, 0x0

    .line 785
    invoke-virtual {p0, v1, p1, v2, v3}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    if-nez p2, :cond_f

    const/4 v2, 0x4

    goto :goto_10

    :cond_f
    const/4 v2, 0x3

    .line 786
    :goto_10
    invoke-virtual {p0, v0, p2, v2, v3}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    if-eqz p1, :cond_31

    .line 788
    iget-object v2, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 789
    new-instance v2, Landroid/support/constraint/ConstraintProperties;

    invoke-direct {v2, p1}, Landroid/support/constraint/ConstraintProperties;-><init>(Landroid/view/View;)V

    .line 790
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {v2, v0, p1, v1, v3}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    :cond_31
    if-eqz p2, :cond_4f

    .line 793
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 794
    new-instance p2, Landroid/support/constraint/ConstraintProperties;

    invoke-direct {p2, p1}, Landroid/support/constraint/ConstraintProperties;-><init>(Landroid/view/View;)V

    .line 795
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p2, v1, p1, v0, v3}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    :cond_4f
    return-object p0
.end method

.method public alpha(F)Landroid/support/constraint/ConstraintProperties;
    .registers 3

    .line 421
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-object p0
.end method

.method public apply()V
    .registers 1

    return-void
.end method

.method public center(IIIIIIF)Landroid/support/constraint/ConstraintProperties;
    .registers 10

    const-string v0, "margin must be > 0"

    if-ltz p3, :cond_50

    if-ltz p6, :cond_4a

    const/4 v0, 0x0

    cmpg-float v0, p7, v0

    if-lez v0, :cond_42

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p7, v0

    if-gtz v0, :cond_42

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_37

    if-ne p2, v0, :cond_18

    goto :goto_37

    :cond_18
    const/4 v0, 0x7

    const/4 v1, 0x6

    if-eq p2, v1, :cond_2c

    if-ne p2, v0, :cond_1f

    goto :goto_2c

    :cond_1f
    const/4 v0, 0x3

    .line 136
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    const/4 p1, 0x4

    .line 137
    invoke-virtual {p0, p1, p4, p5, p6}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    .line 138
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p7, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    goto :goto_41

    .line 131
    :cond_2c
    :goto_2c
    invoke-virtual {p0, v1, p1, p2, p3}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    .line 132
    invoke-virtual {p0, v0, p4, p5, p6}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    .line 134
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p7, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    goto :goto_41

    .line 126
    :cond_37
    :goto_37
    invoke-virtual {p0, v1, p1, p2, p3}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    .line 127
    invoke-virtual {p0, v0, p4, p5, p6}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    .line 129
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p7, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    :goto_41
    return-object p0

    .line 122
    :cond_42
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bias must be between 0 and 1 inclusive"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 119
    :cond_4a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 116
    :cond_50
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public centerHorizontally(I)Landroid/support/constraint/ConstraintProperties;
    .registers 10

    if-nez p1, :cond_f

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    move-object v0, p0

    .line 209
    invoke-virtual/range {v0 .. v7}, Landroid/support/constraint/ConstraintProperties;->center(IIIIIIF)Landroid/support/constraint/ConstraintProperties;

    goto :goto_1b

    :cond_f
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    move-object v0, p0

    move v1, p1

    move v4, p1

    .line 211
    invoke-virtual/range {v0 .. v7}, Landroid/support/constraint/ConstraintProperties;->center(IIIIIIF)Landroid/support/constraint/ConstraintProperties;

    :goto_1b
    return-object p0
.end method

.method public centerHorizontally(IIIIIIF)Landroid/support/constraint/ConstraintProperties;
    .registers 9

    const/4 v0, 0x1

    .line 157
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    const/4 p1, 0x2

    .line 158
    invoke-virtual {p0, p1, p4, p5, p6}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    .line 159
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p7, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    return-object p0
.end method

.method public centerHorizontallyRtl(I)Landroid/support/constraint/ConstraintProperties;
    .registers 10

    if-nez p1, :cond_f

    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    move-object v0, p0

    .line 224
    invoke-virtual/range {v0 .. v7}, Landroid/support/constraint/ConstraintProperties;->center(IIIIIIF)Landroid/support/constraint/ConstraintProperties;

    goto :goto_1b

    :cond_f
    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    move-object v0, p0

    move v1, p1

    move v4, p1

    .line 226
    invoke-virtual/range {v0 .. v7}, Landroid/support/constraint/ConstraintProperties;->center(IIIIIIF)Landroid/support/constraint/ConstraintProperties;

    :goto_1b
    return-object p0
.end method

.method public centerHorizontallyRtl(IIIIIIF)Landroid/support/constraint/ConstraintProperties;
    .registers 9

    const/4 v0, 0x6

    .line 176
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    const/4 p1, 0x7

    .line 177
    invoke-virtual {p0, p1, p4, p5, p6}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    .line 178
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p7, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    return-object p0
.end method

.method public centerVertically(I)Landroid/support/constraint/ConstraintProperties;
    .registers 10

    if-nez p1, :cond_f

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    move-object v0, p0

    .line 239
    invoke-virtual/range {v0 .. v7}, Landroid/support/constraint/ConstraintProperties;->center(IIIIIIF)Landroid/support/constraint/ConstraintProperties;

    goto :goto_1b

    :cond_f
    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    move-object v0, p0

    move v1, p1

    move v4, p1

    .line 241
    invoke-virtual/range {v0 .. v7}, Landroid/support/constraint/ConstraintProperties;->center(IIIIIIF)Landroid/support/constraint/ConstraintProperties;

    :goto_1b
    return-object p0
.end method

.method public centerVertically(IIIIIIF)Landroid/support/constraint/ConstraintProperties;
    .registers 9

    const/4 v0, 0x3

    .line 195
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    const/4 p1, 0x4

    .line 196
    invoke-virtual {p0, p1, p4, p5, p6}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    .line 197
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p7, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    return-object p0
.end method

.method public connect(IIII)Landroid/support/constraint/ConstraintProperties;
    .registers 15

    const/16 v0, 0x11

    const/4 v1, 0x2

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x1

    const-string v7, "right to "

    const-string v8, " undefined"

    const/4 v9, -0x1

    packed-switch p1, :pswitch_data_1d0

    .line 1007
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1008
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintProperties;->sideToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p3}, Landroid/support/constraint/ConstraintProperties;->sideToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " unknown"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_37
    if-ne p3, v2, :cond_42

    .line 992
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p2, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 993
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v9, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    goto :goto_4c

    :cond_42
    if-ne p3, v3, :cond_57

    .line 995
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p2, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    .line 996
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v9, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 1000
    :goto_4c
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v0, :cond_1b0

    .line 1002
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    invoke-virtual {p1, p4}, Landroid/support/constraint/ConstraintLayout$LayoutParams;->setMarginEnd(I)V

    goto/16 :goto_1b0

    .line 998
    :cond_57
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p3}, Landroid/support/constraint/ConstraintProperties;->sideToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_73
    if-ne p3, v3, :cond_7e

    .line 978
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p2, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    .line 979
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v9, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    goto :goto_88

    :cond_7e
    if-ne p3, v2, :cond_93

    .line 981
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p2, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 982
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v9, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    .line 986
    :goto_88
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v0, :cond_1b0

    .line 987
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    invoke-virtual {p1, p4}, Landroid/support/constraint/ConstraintLayout$LayoutParams;->setMarginStart(I)V

    goto/16 :goto_1b0

    .line 984
    :cond_93
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p3}, Landroid/support/constraint/ConstraintProperties;->sideToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_af
    const/4 p1, 0x5

    if-ne p3, p1, :cond_c8

    .line 967
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p2, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 968
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v9, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 969
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v9, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 970
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v9, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    .line 971
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v9, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    goto/16 :goto_1b0

    .line 973
    :cond_c8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p3}, Landroid/support/constraint/ConstraintProperties;->sideToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_e4
    if-ne p3, v4, :cond_f3

    .line 951
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p2, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 952
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v9, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 953
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v9, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    goto :goto_101

    :cond_f3
    if-ne p3, v5, :cond_107

    .line 956
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p2, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 957
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v9, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 958
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v9, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 963
    :goto_101
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p4, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_1b0

    .line 961
    :cond_107
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p3}, Landroid/support/constraint/ConstraintProperties;->sideToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_123
    if-ne p3, v5, :cond_132

    .line 936
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p2, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    .line 937
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v9, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 938
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v9, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    goto :goto_140

    :cond_132
    if-ne p3, v4, :cond_145

    .line 940
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p2, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 941
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v9, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    .line 942
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v9, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 947
    :goto_140
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p4, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topMargin:I

    goto :goto_1b0

    .line 945
    :cond_145
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p3}, Landroid/support/constraint/ConstraintProperties;->sideToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_161
    if-ne p3, v6, :cond_16c

    .line 922
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p2, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 923
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v9, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    goto :goto_176

    :cond_16c
    if-ne p3, v1, :cond_17b

    .line 926
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p2, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 927
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v9, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 932
    :goto_176
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p4, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightMargin:I

    goto :goto_1b0

    .line 930
    :cond_17b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p3}, Landroid/support/constraint/ConstraintProperties;->sideToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_197
    if-ne p3, v6, :cond_1a2

    .line 909
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p2, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 910
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v9, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    goto :goto_1ac

    :cond_1a2
    if-ne p3, v1, :cond_1b1

    .line 912
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p2, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 913
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v9, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 918
    :goto_1ac
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p4, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    :cond_1b0
    :goto_1b0
    return-object p0

    .line 916
    :cond_1b1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Left to "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p3}, Landroid/support/constraint/ConstraintProperties;->sideToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_1d0
    .packed-switch 0x1
        :pswitch_197
        :pswitch_161
        :pswitch_123
        :pswitch_e4
        :pswitch_af
        :pswitch_73
        :pswitch_37
    .end packed-switch
.end method

.method public constrainDefaultHeight(I)Landroid/support/constraint/ConstraintProperties;
    .registers 3

    .line 653
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    return-object p0
.end method

.method public constrainDefaultWidth(I)Landroid/support/constraint/ConstraintProperties;
    .registers 3

    .line 665
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    return-object p0
.end method

.method public constrainHeight(I)Landroid/support/constraint/ConstraintProperties;
    .registers 3

    .line 582
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    return-object p0
.end method

.method public constrainMaxHeight(I)Landroid/support/constraint/ConstraintProperties;
    .registers 3

    .line 605
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    return-object p0
.end method

.method public constrainMaxWidth(I)Landroid/support/constraint/ConstraintProperties;
    .registers 3

    .line 617
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    return-object p0
.end method

.method public constrainMinHeight(I)Landroid/support/constraint/ConstraintProperties;
    .registers 3

    .line 629
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    return-object p0
.end method

.method public constrainMinWidth(I)Landroid/support/constraint/ConstraintProperties;
    .registers 3

    .line 641
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    return-object p0
.end method

.method public constrainWidth(I)Landroid/support/constraint/ConstraintProperties;
    .registers 3

    .line 593
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    return-object p0
.end method

.method public dimensionRatio(Ljava/lang/String;)Landroid/support/constraint/ConstraintProperties;
    .registers 3

    .line 399
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput-object p1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    return-object p0
.end method

.method public elevation(F)Landroid/support/constraint/ConstraintProperties;
    .registers 4

    .line 432
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    .line 433
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setElevation(F)V

    :cond_b
    return-object p0
.end method

.method public goneMargin(II)Landroid/support/constraint/ConstraintProperties;
    .registers 3

    packed-switch p1, :pswitch_data_32

    .line 364
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unknown constraint"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 361
    :pswitch_b
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p2, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    goto :goto_30

    .line 358
    :pswitch_10
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p2, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    goto :goto_30

    .line 356
    :pswitch_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "baseline does not support margins"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 353
    :pswitch_1d
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p2, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    goto :goto_30

    .line 350
    :pswitch_22
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p2, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    goto :goto_30

    .line 347
    :pswitch_27
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p2, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    goto :goto_30

    .line 344
    :pswitch_2c
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p2, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    :goto_30
    return-object p0

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_27
        :pswitch_22
        :pswitch_1d
        :pswitch_15
        :pswitch_10
        :pswitch_b
    .end packed-switch
.end method

.method public horizontalBias(F)Landroid/support/constraint/ConstraintProperties;
    .registers 3

    .line 376
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    return-object p0
.end method

.method public horizontalChainStyle(I)Landroid/support/constraint/ConstraintProperties;
    .registers 3

    .line 708
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    return-object p0
.end method

.method public horizontalWeight(F)Landroid/support/constraint/ConstraintProperties;
    .registers 3

    .line 677
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalWeight:F

    return-object p0
.end method

.method public margin(II)Landroid/support/constraint/ConstraintProperties;
    .registers 3

    packed-switch p1, :pswitch_data_34

    .line 329
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unknown constraint"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 326
    :pswitch_b
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    invoke-virtual {p1, p2}, Landroid/support/constraint/ConstraintLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_32

    .line 323
    :pswitch_11
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    invoke-virtual {p1, p2}, Landroid/support/constraint/ConstraintLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_32

    .line 321
    :pswitch_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "baseline does not support margins"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 318
    :pswitch_1f
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p2, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomMargin:I

    goto :goto_32

    .line 315
    :pswitch_24
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p2, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topMargin:I

    goto :goto_32

    .line 312
    :pswitch_29
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p2, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightMargin:I

    goto :goto_32

    .line 309
    :pswitch_2e
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p2, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    :goto_32
    return-object p0

    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_29
        :pswitch_24
        :pswitch_1f
        :pswitch_17
        :pswitch_11
        :pswitch_b
    .end packed-switch
.end method

.method public removeConstraints(I)Landroid/support/constraint/ConstraintProperties;
    .registers 3

    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_7a

    .line 294
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown constraint"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 288
    :pswitch_c
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    .line 289
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 290
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/support/constraint/ConstraintLayout$LayoutParams;->setMarginEnd(I)V

    .line 291
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    goto :goto_78

    .line 282
    :pswitch_1e
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 283
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    .line 284
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/support/constraint/ConstraintLayout$LayoutParams;->setMarginStart(I)V

    .line 285
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    goto :goto_78

    .line 279
    :pswitch_30
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    goto :goto_78

    .line 273
    :pswitch_35
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 274
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 275
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomMargin:I

    .line 276
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    goto :goto_78

    .line 267
    :pswitch_46
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 268
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    .line 269
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topMargin:I

    .line 270
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    goto :goto_78

    .line 261
    :pswitch_57
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 262
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 263
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightMargin:I

    .line 264
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    goto :goto_78

    .line 255
    :pswitch_68
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 256
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 257
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    .line 258
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    :goto_78
    return-object p0

    nop

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_68
        :pswitch_57
        :pswitch_46
        :pswitch_35
        :pswitch_30
        :pswitch_1e
        :pswitch_c
    .end packed-switch
.end method

.method public removeFromHorizontalChain()Landroid/support/constraint/ConstraintProperties;
    .registers 11

    .line 843
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 844
    iget-object v1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iget v1, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 846
    iget-object v2, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_72

    if-eq v1, v4, :cond_11

    goto :goto_72

    .line 868
    :cond_11
    iget v1, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 869
    iget-object v2, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iget v2, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    const/4 v5, 0x7

    const/4 v6, 0x6

    if-ne v1, v4, :cond_1d

    if-eq v2, v4, :cond_6b

    .line 871
    :cond_1d
    iget-object v7, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 872
    new-instance v8, Landroid/support/constraint/ConstraintProperties;

    invoke-direct {v8, v7}, Landroid/support/constraint/ConstraintProperties;-><init>(Landroid/view/View;)V

    .line 873
    iget-object v7, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 874
    new-instance v9, Landroid/support/constraint/ConstraintProperties;

    invoke-direct {v9, v7}, Landroid/support/constraint/ConstraintProperties;-><init>(Landroid/view/View;)V

    .line 876
    iget-object v7, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    if-eq v1, v4, :cond_50

    if-eq v2, v4, :cond_50

    .line 878
    invoke-virtual {v8, v5, v2, v6, v3}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    .line 879
    invoke-virtual {v9, v6, v0, v5, v3}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    goto :goto_6b

    :cond_50
    if-ne v0, v4, :cond_54

    if-eq v2, v4, :cond_6b

    .line 881
    :cond_54
    iget v0, v7, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    iget-object v1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    if-eq v0, v4, :cond_60

    .line 883
    iget v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    invoke-virtual {v8, v5, v0, v5, v3}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    goto :goto_6b

    .line 884
    :cond_60
    iget v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    iget-object v1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    if-eq v0, v4, :cond_6b

    .line 886
    iget v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    invoke-virtual {v9, v6, v0, v6, v3}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    .line 890
    :cond_6b
    :goto_6b
    invoke-virtual {p0, v6}, Landroid/support/constraint/ConstraintProperties;->removeConstraints(I)Landroid/support/constraint/ConstraintProperties;

    .line 891
    invoke-virtual {p0, v5}, Landroid/support/constraint/ConstraintProperties;->removeConstraints(I)Landroid/support/constraint/ConstraintProperties;

    goto :goto_c8

    .line 847
    :cond_72
    :goto_72
    iget-object v2, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 848
    new-instance v5, Landroid/support/constraint/ConstraintProperties;

    invoke-direct {v5, v2}, Landroid/support/constraint/ConstraintProperties;-><init>(Landroid/view/View;)V

    .line 849
    iget-object v2, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 850
    new-instance v6, Landroid/support/constraint/ConstraintProperties;

    invoke-direct {v6, v2}, Landroid/support/constraint/ConstraintProperties;-><init>(Landroid/view/View;)V

    .line 851
    iget-object v2, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-eq v0, v4, :cond_a7

    if-eq v1, v4, :cond_a7

    .line 853
    invoke-virtual {v5, v8, v1, v7, v3}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    .line 854
    invoke-virtual {v6, v7, v0, v8, v3}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    goto :goto_c2

    :cond_a7
    if-ne v0, v4, :cond_ab

    if-eq v1, v4, :cond_c2

    .line 856
    :cond_ab
    iget v0, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    iget-object v1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    if-eq v0, v4, :cond_b7

    .line 858
    iget v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    invoke-virtual {v5, v8, v0, v8, v3}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    goto :goto_c2

    .line 859
    :cond_b7
    iget v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    iget-object v1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    if-eq v0, v4, :cond_c2

    .line 861
    iget v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    invoke-virtual {v6, v7, v0, v7, v3}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    .line 864
    :cond_c2
    :goto_c2
    invoke-virtual {p0, v7}, Landroid/support/constraint/ConstraintProperties;->removeConstraints(I)Landroid/support/constraint/ConstraintProperties;

    .line 865
    invoke-virtual {p0, v8}, Landroid/support/constraint/ConstraintProperties;->removeConstraints(I)Landroid/support/constraint/ConstraintProperties;

    :goto_c8
    return-object p0
.end method

.method public removeFromVerticalChain()Landroid/support/constraint/ConstraintProperties;
    .registers 10

    .line 808
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 809
    iget-object v1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iget v1, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, -0x1

    if-ne v0, v4, :cond_f

    if-eq v1, v4, :cond_5e

    .line 811
    :cond_f
    iget-object v5, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 812
    new-instance v6, Landroid/support/constraint/ConstraintProperties;

    invoke-direct {v6, v5}, Landroid/support/constraint/ConstraintProperties;-><init>(Landroid/view/View;)V

    .line 813
    iget-object v5, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 814
    new-instance v7, Landroid/support/constraint/ConstraintProperties;

    invoke-direct {v7, v5}, Landroid/support/constraint/ConstraintProperties;-><init>(Landroid/view/View;)V

    .line 815
    iget-object v5, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    const/4 v8, 0x0

    if-eq v0, v4, :cond_43

    if-eq v1, v4, :cond_43

    .line 817
    invoke-virtual {v6, v2, v1, v3, v8}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    .line 818
    invoke-virtual {v7, v3, v0, v2, v8}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    goto :goto_5e

    :cond_43
    if-ne v0, v4, :cond_47

    if-eq v1, v4, :cond_5e

    .line 820
    :cond_47
    iget v0, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iget-object v1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    if-eq v0, v4, :cond_53

    .line 822
    iget v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    invoke-virtual {v6, v2, v0, v2, v8}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    goto :goto_5e

    .line 823
    :cond_53
    iget v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    iget-object v1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    if-eq v0, v4, :cond_5e

    .line 825
    iget v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    invoke-virtual {v7, v3, v0, v3, v8}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    .line 830
    :cond_5e
    :goto_5e
    invoke-virtual {p0, v3}, Landroid/support/constraint/ConstraintProperties;->removeConstraints(I)Landroid/support/constraint/ConstraintProperties;

    .line 831
    invoke-virtual {p0, v2}, Landroid/support/constraint/ConstraintProperties;->removeConstraints(I)Landroid/support/constraint/ConstraintProperties;

    return-object p0
.end method

.method public rotation(F)Landroid/support/constraint/ConstraintProperties;
    .registers 3

    .line 445
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setRotation(F)V

    return-object p0
.end method

.method public rotationX(F)Landroid/support/constraint/ConstraintProperties;
    .registers 3

    .line 456
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setRotationX(F)V

    return-object p0
.end method

.method public rotationY(F)Landroid/support/constraint/ConstraintProperties;
    .registers 3

    .line 467
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setRotationY(F)V

    return-object p0
.end method

.method public scaleX(F)Landroid/support/constraint/ConstraintProperties;
    .registers 3

    .line 478
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    return-object p0
.end method

.method public scaleY(F)Landroid/support/constraint/ConstraintProperties;
    .registers 2

    return-object p0
.end method

.method public transformPivot(FF)Landroid/support/constraint/ConstraintProperties;
    .registers 4

    .line 522
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setPivotX(F)V

    .line 523
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotY(F)V

    return-object p0
.end method

.method public transformPivotX(F)Landroid/support/constraint/ConstraintProperties;
    .registers 3

    .line 499
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setPivotX(F)V

    return-object p0
.end method

.method public transformPivotY(F)Landroid/support/constraint/ConstraintProperties;
    .registers 3

    .line 510
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setPivotY(F)V

    return-object p0
.end method

.method public translation(FF)Landroid/support/constraint/ConstraintProperties;
    .registers 4

    .line 557
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 558
    iget-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    return-object p0
.end method

.method public translationX(F)Landroid/support/constraint/ConstraintProperties;
    .registers 3

    .line 534
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    return-object p0
.end method

.method public translationY(F)Landroid/support/constraint/ConstraintProperties;
    .registers 3

    .line 545
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-object p0
.end method

.method public translationZ(F)Landroid/support/constraint/ConstraintProperties;
    .registers 4

    .line 569
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    .line 570
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationZ(F)V

    :cond_b
    return-object p0
.end method

.method public verticalBias(F)Landroid/support/constraint/ConstraintProperties;
    .registers 3

    .line 387
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    return-object p0
.end method

.method public verticalChainStyle(I)Landroid/support/constraint/ConstraintProperties;
    .registers 3

    .line 727
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    return-object p0
.end method

.method public verticalWeight(F)Landroid/support/constraint/ConstraintProperties;
    .registers 3

    .line 689
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalWeight:F

    return-object p0
.end method

.method public visibility(I)Landroid/support/constraint/ConstraintProperties;
    .registers 3

    .line 410
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-object p0
.end method
