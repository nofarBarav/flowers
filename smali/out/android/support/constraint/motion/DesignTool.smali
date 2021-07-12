.class public Landroid/support/constraint/motion/DesignTool;
.super Ljava/lang/Object;
.source "DesignTool.java"

# interfaces
.implements Landroid/support/constraint/motion/ProxyInterface;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "DesignTool"

.field static final allAttributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final allMargins:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLastEndState:Ljava/lang/String;

.field private mLastEndStateId:I

.field private mLastStartState:Ljava/lang/String;

.field private mLastStartStateId:I

.field private final mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

.field private mSceneCache:Landroid/support/constraint/motion/MotionScene;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/support/constraint/motion/DesignTool;->allAttributes:Ljava/util/HashMap;

    .line 87
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/support/constraint/motion/DesignTool;->allMargins:Ljava/util/HashMap;

    const/4 v2, 0x4

    .line 90
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    const-string v4, "layout_constraintBottom_toBottomOf"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x3

    .line 91
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    const-string v6, "layout_constraintBottom_toTopOf"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-static {v3, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const-string v5, "layout_constraintTop_toBottomOf"

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-static {v3, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const-string v3, "layout_constraintTop_toTopOf"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x6

    .line 94
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    const-string v8, "layout_constraintStart_toStartOf"

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x7

    .line 95
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v9

    const-string v10, "layout_constraintStart_toEndOf"

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-static {v7, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const-string v9, "layout_constraintEnd_toStartOf"

    invoke-virtual {v0, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-static {v7, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const-string v7, "layout_constraintEnd_toEndOf"

    invoke-virtual {v0, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    .line 98
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v11

    const-string v12, "layout_constraintLeft_toLeftOf"

    invoke-virtual {v0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v11, 0x2

    .line 99
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v13

    const-string v14, "layout_constraintLeft_toRightOf"

    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-static {v11, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v13

    const-string v15, "layout_constraintRight_toRightOf"

    invoke-virtual {v0, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-static {v11, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const-string v11, "layout_constraintRight_toLeftOf"

    invoke-virtual {v0, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x5

    .line 102
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const-string v13, "layout_constraintBaseline_toBaselineOf"

    invoke-virtual {v0, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "layout_marginBottom"

    .line 104
    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "layout_marginTop"

    .line 106
    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "layout_marginStart"

    .line 108
    invoke-virtual {v1, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-virtual {v1, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "layout_marginEnd"

    .line 110
    invoke-virtual {v1, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "layout_marginEnd"

    .line 111
    invoke-virtual {v1, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "layout_marginLeft"

    .line 112
    invoke-virtual {v1, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "layout_marginLeft"

    .line 113
    invoke-virtual {v1, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "layout_marginRight"

    .line 114
    invoke-virtual {v1, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "layout_marginRight"

    .line 115
    invoke-virtual {v1, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/support/constraint/motion/MotionLayout;)V
    .registers 3

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mLastStartState:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mLastEndState:Ljava/lang/String;

    const/4 v0, -0x1

    .line 79
    iput v0, p0, Landroid/support/constraint/motion/DesignTool;->mLastStartStateId:I

    .line 80
    iput v0, p0, Landroid/support/constraint/motion/DesignTool;->mLastEndStateId:I

    .line 83
    iput-object p1, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    return-void
.end method

.method private static Connect(ILandroid/support/constraint/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/support/constraint/ConstraintSet;",
            "Landroid/view/View;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .line 132
    sget-object v0, Landroid/support/constraint/motion/DesignTool;->allAttributes:Ljava/util/HashMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 133
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_42

    const/4 v2, 0x0

    .line 137
    sget-object v3, Landroid/support/constraint/motion/DesignTool;->allMargins:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_33

    .line 139
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static {p0, p3}, Landroid/support/constraint/motion/DesignTool;->GetPxFromDp(ILjava/lang/String;)I

    move-result v2

    move v8, v2

    goto :goto_34

    :cond_33
    const/4 v8, 0x0

    .line 141
    :goto_34
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 142
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v4

    move-object v3, p1

    move v5, p4

    move v7, p5

    invoke-virtual/range {v3 .. v8}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    :cond_42
    return-void
.end method

.method private static GetPxFromDp(ILjava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/16 v1, 0x64

    .line 122
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_e

    return v0

    .line 126
    :cond_e
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 127
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int p1, p1, p0

    int-to-float p0, p1

    const/high16 p1, 0x43200000    # 160.0f

    div-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method private static SetAbsolutePositions(ILandroid/support/constraint/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/support/constraint/ConstraintSet;",
            "Landroid/view/View;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "layout_editor_absoluteX"

    .line 181
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 183
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {p0, v0}, Landroid/support/constraint/motion/DesignTool;->GetPxFromDp(ILjava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/support/constraint/ConstraintSet;->setEditorAbsoluteX(II)V

    :cond_15
    const-string v0, "layout_editor_absoluteY"

    .line 185
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-eqz p3, :cond_2a

    .line 187
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    invoke-static {p0, p3}, Landroid/support/constraint/motion/DesignTool;->GetPxFromDp(ILjava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/support/constraint/ConstraintSet;->setEditorAbsoluteY(II)V

    :cond_2a
    return-void
.end method

.method private static SetBias(Landroid/support/constraint/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/constraint/ConstraintSet;",
            "Landroid/view/View;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p3, v0, :cond_6

    const-string v1, "layout_constraintVertical_bias"

    goto :goto_8

    :cond_6
    const-string v1, "layout_constraintHorizontal_bias"

    .line 151
    :goto_8
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_2b

    if-nez p3, :cond_1e

    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/support/constraint/ConstraintSet;->setHorizontalBias(IF)V

    goto :goto_2b

    :cond_1e
    if-ne p3, v0, :cond_2b

    .line 156
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/support/constraint/ConstraintSet;->setVerticalBias(IF)V

    :cond_2b
    :goto_2b
    return-void
.end method

.method private static SetDimensions(ILandroid/support/constraint/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/support/constraint/ConstraintSet;",
            "Landroid/view/View;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p4, v0, :cond_6

    const-string v0, "layout_height"

    goto :goto_8

    :cond_6
    const-string v0, "layout_width"

    .line 166
    :goto_8
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-eqz p3, :cond_2e

    const/4 v0, -0x2

    const-string v1, "wrap_content"

    .line 169
    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 170
    invoke-static {p0, p3}, Landroid/support/constraint/motion/DesignTool;->GetPxFromDp(ILjava/lang/String;)I

    move-result v0

    :cond_1d
    if-nez p4, :cond_27

    .line 173
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p0

    invoke-virtual {p1, p0, v0}, Landroid/support/constraint/ConstraintSet;->constrainWidth(II)V

    goto :goto_2e

    .line 175
    :cond_27
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p0

    invoke-virtual {p1, p0, v0}, Landroid/support/constraint/ConstraintSet;->constrainHeight(II)V

    :cond_2e
    :goto_2e
    return-void
.end method


# virtual methods
.method public designAccess(ILjava/lang/String;Ljava/lang/Object;[FI[FI)I
    .registers 9

    .line 550
    check-cast p3, Landroid/view/View;

    const/4 p4, 0x0

    const/4 p5, -0x1

    if-eqz p1, :cond_1c

    .line 553
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v0, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_d

    return p5

    :cond_d
    if-eqz p3, :cond_1b

    .line 558
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v0, v0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/support/constraint/motion/MotionController;

    if-nez p3, :cond_1d

    :cond_1b
    return p5

    :cond_1c
    move-object p3, p4

    :cond_1d
    const/4 v0, 0x1

    if-eqz p1, :cond_54

    if-eq p1, v0, :cond_46

    const/4 v0, 0x2

    if-eq p1, v0, :cond_38

    const/4 p4, 0x3

    if-eq p1, p4, :cond_29

    return p5

    .line 588
    :cond_29
    iget-object p1, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object p1, p1, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionScene;->getDuration()I

    move-result p1

    .line 589
    div-int/lit8 p1, p1, 0x10

    .line 591
    invoke-virtual {p3, p2, p6, p7}, Landroid/support/constraint/motion/MotionController;->getAttributeValues(Ljava/lang/String;[FI)I

    move-result p1

    return p1

    .line 580
    :cond_38
    iget-object p1, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object p1, p1, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionScene;->getDuration()I

    move-result p1

    .line 581
    div-int/lit8 p1, p1, 0x10

    .line 583
    invoke-virtual {p3, p6, p4}, Landroid/support/constraint/motion/MotionController;->buildKeyFrames([F[I)I

    return p1

    .line 572
    :cond_46
    iget-object p1, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object p1, p1, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionScene;->getDuration()I

    move-result p1

    .line 573
    div-int/lit8 p1, p1, 0x10

    .line 575
    invoke-virtual {p3, p6, p1}, Landroid/support/constraint/motion/MotionController;->buildPath([FI)V

    return p1

    :cond_54
    return v0
.end method

.method public disableAutoTransition(Z)V
    .registers 3

    .line 410
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v0, p1}, Landroid/support/constraint/motion/MotionLayout;->disableAutoTransition(Z)V

    return-void
.end method

.method public dumpConstraintSet(Ljava/lang/String;)V
    .registers 6

    .line 708
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v0, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_c

    .line 709
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v1, p0, Landroid/support/constraint/motion/DesignTool;->mSceneCache:Landroid/support/constraint/motion/MotionScene;

    iput-object v1, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    .line 711
    :cond_c
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v0, p1}, Landroid/support/constraint/motion/MotionLayout;->lookUpConstraintId(Ljava/lang/String;)I

    move-result v0

    .line 712
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " dumping  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 714
    :try_start_35
    iget-object p1, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object p1, p1, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {p1, v0}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object p1

    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v0, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-virtual {p1, v0, v1}, Landroid/support/constraint/ConstraintSet;->dump(Landroid/support/constraint/motion/MotionScene;[I)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_47} :catch_48

    goto :goto_4c

    :catch_48
    move-exception p1

    .line 716
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4c
    return-void
.end method

.method public getAnimationKeyFrames(Ljava/lang/Object;[F)I
    .registers 5

    .line 241
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v0, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_8

    const/4 p1, -0x1

    return p1

    .line 244
    :cond_8
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v0, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene;->getDuration()I

    move-result v0

    .line 245
    div-int/lit8 v0, v0, 0x10

    .line 247
    iget-object v1, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v1, v1, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/constraint/motion/MotionController;

    if-nez p1, :cond_20

    const/4 p1, 0x0

    return p1

    :cond_20
    const/4 v1, 0x0

    .line 252
    invoke-virtual {p1, p2, v1}, Landroid/support/constraint/motion/MotionController;->buildKeyFrames([F[I)I

    return v0
.end method

.method public getAnimationPath(Ljava/lang/Object;[FI)I
    .registers 5

    .line 199
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v0, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_8

    const/4 p1, -0x1

    return p1

    .line 203
    :cond_8
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v0, v0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/constraint/motion/MotionController;

    if-nez p1, :cond_16

    const/4 p1, 0x0

    return p1

    .line 208
    :cond_16
    invoke-virtual {p1, p2, p3}, Landroid/support/constraint/motion/MotionController;->buildPath([FI)V

    return p3
.end method

.method public getAnimationRectangles(Ljava/lang/Object;[F)V
    .registers 5

    .line 219
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v0, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_7

    return-void

    .line 222
    :cond_7
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v0, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene;->getDuration()I

    move-result v0

    .line 223
    div-int/lit8 v0, v0, 0x10

    .line 225
    iget-object v1, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v1, v1, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/constraint/motion/MotionController;

    if-nez p1, :cond_1e

    return-void

    .line 230
    :cond_1e
    invoke-virtual {p1, p2, v0}, Landroid/support/constraint/motion/MotionController;->buildRectangles([FI)V

    return-void
.end method

.method public getEndState()Ljava/lang/String;
    .registers 3

    .line 335
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionLayout;->getEndState()I

    move-result v0

    .line 337
    iget v1, p0, Landroid/support/constraint/motion/DesignTool;->mLastEndStateId:I

    if-ne v1, v0, :cond_d

    .line 338
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mLastEndState:Ljava/lang/String;

    return-object v0

    .line 340
    :cond_d
    iget-object v1, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v1, v0}, Landroid/support/constraint/motion/MotionLayout;->getConstraintSetNames(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 342
    iput-object v1, p0, Landroid/support/constraint/motion/DesignTool;->mLastEndState:Ljava/lang/String;

    .line 343
    iput v0, p0, Landroid/support/constraint/motion/DesignTool;->mLastEndStateId:I

    :cond_19
    return-object v1
.end method

.method public getKeyFrameInfo(Ljava/lang/Object;I[I)I
    .registers 5

    .line 447
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v0, v0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/constraint/motion/MotionController;

    if-nez p1, :cond_10

    const/4 p1, 0x0

    return p1

    .line 451
    :cond_10
    invoke-virtual {p1, p2, p3}, Landroid/support/constraint/motion/MotionController;->getKeyFrameInfo(I[I)I

    move-result p1

    return p1
.end method

.method public getKeyFramePosition(Ljava/lang/Object;IFF)F
    .registers 6

    .line 462
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v0, v0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/constraint/motion/MotionController;

    invoke-virtual {p1, p2, p3, p4}, Landroid/support/constraint/motion/MotionController;->getKeyFrameParameter(IFF)F

    move-result p1

    return p1
.end method

.method public getKeyFramePositions(Ljava/lang/Object;[I[F)I
    .registers 5

    .line 432
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v0, v0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/constraint/motion/MotionController;

    if-nez p1, :cond_10

    const/4 p1, 0x0

    return p1

    .line 436
    :cond_10
    invoke-virtual {p1, p2, p3}, Landroid/support/constraint/motion/MotionController;->getkeyFramePositions([I[F)I

    move-result p1

    return p1
.end method

.method public getKeyframe(III)Ljava/lang/Object;
    .registers 6

    .line 601
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v0, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 604
    :cond_8
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v0, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget-object v1, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v1}, Landroid/support/constraint/motion/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/support/constraint/motion/MotionScene;->getKeyFrame(Landroid/content/Context;III)Landroid/support/constraint/motion/Key;

    move-result-object p1

    return-object p1
.end method

.method public getKeyframe(Ljava/lang/Object;II)Ljava/lang/Object;
    .registers 6

    .line 640
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v0, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 643
    :cond_8
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 644
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v0, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget-object v1, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v1}, Landroid/support/constraint/motion/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p1, p3}, Landroid/support/constraint/motion/MotionScene;->getKeyFrame(Landroid/content/Context;III)Landroid/support/constraint/motion/Key;

    move-result-object p1

    return-object p1
.end method

.method public getKeyframeAtLocation(Ljava/lang/Object;FF)Ljava/lang/Object;
    .registers 6

    .line 608
    check-cast p1, Landroid/view/View;

    .line 610
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v0, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_e

    const/4 p1, -0x1

    .line 611
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_e
    const/4 v0, 0x0

    if-eqz p1, :cond_31

    .line 614
    iget-object v1, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v1, v1, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/motion/MotionController;

    if-nez v1, :cond_1e

    return-object v0

    .line 621
    :cond_1e
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 622
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    .line 623
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    .line 624
    invoke-virtual {v1, v0, p1, p2, p3}, Landroid/support/constraint/motion/MotionController;->getPositionKeyframe(IIFF)Landroid/support/constraint/motion/KeyPositionBase;

    move-result-object p1

    return-object p1

    :cond_31
    return-object v0
.end method

.method public getPositionKeyframe(Ljava/lang/Object;Ljava/lang/Object;FF[Ljava/lang/String;[F)Ljava/lang/Boolean;
    .registers 15

    .line 628
    instance-of v0, p1, Landroid/support/constraint/motion/KeyPositionBase;

    if-eqz v0, :cond_2b

    .line 629
    move-object v3, p1

    check-cast v3, Landroid/support/constraint/motion/KeyPositionBase;

    .line 630
    iget-object p1, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object p1, p1, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    move-object v2, p2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/support/constraint/motion/MotionController;

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 631
    invoke-virtual/range {v1 .. v7}, Landroid/support/constraint/motion/MotionController;->positionKeyframe(Landroid/view/View;Landroid/support/constraint/motion/KeyPositionBase;FF[Ljava/lang/String;[F)V

    .line 632
    iget-object p1, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionLayout;->rebuildScene()V

    .line 633
    iget-object p1, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    .line 634
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_2b
    const/4 p1, 0x0

    .line 636
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public getProgress()F
    .registers 2

    .line 354
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionLayout;->getProgress()F

    move-result v0

    return v0
.end method

.method public getStartState()Ljava/lang/String;
    .registers 3

    .line 321
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionLayout;->getStartState()I

    move-result v0

    .line 322
    iget v1, p0, Landroid/support/constraint/motion/DesignTool;->mLastStartStateId:I

    if-ne v1, v0, :cond_d

    .line 323
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mLastStartState:Ljava/lang/String;

    return-object v0

    .line 325
    :cond_d
    iget-object v1, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v1, v0}, Landroid/support/constraint/motion/MotionLayout;->getConstraintSetNames(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 328
    iput-object v1, p0, Landroid/support/constraint/motion/DesignTool;->mLastStartState:Ljava/lang/String;

    .line 329
    iput v0, p0, Landroid/support/constraint/motion/DesignTool;->mLastStartStateId:I

    .line 331
    :cond_19
    iget-object v1, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v1, v0}, Landroid/support/constraint/motion/MotionLayout;->getConstraintSetNames(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .registers 3

    .line 363
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mLastStartState:Ljava/lang/String;

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mLastEndState:Ljava/lang/String;

    if-eqz v0, :cond_20

    .line 364
    invoke-virtual {p0}, Landroid/support/constraint/motion/DesignTool;->getProgress()F

    move-result v0

    const v1, 0x3c23d70a    # 0.01f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_16

    .line 367
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mLastStartState:Ljava/lang/String;

    return-object v0

    :cond_16
    const v1, 0x3f7d70a4    # 0.99f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_20

    .line 369
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mLastEndState:Ljava/lang/String;

    return-object v0

    .line 372
    :cond_20
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mLastStartState:Ljava/lang/String;

    return-object v0
.end method

.method public getTransitionTimeMs()J
    .registers 3

    .line 419
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionLayout;->getTransitionTimeMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public isInTransition()Z
    .registers 2

    .line 381
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mLastStartState:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mLastEndState:Ljava/lang/String;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public setAttributes(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 14

    .line 665
    check-cast p3, Landroid/view/View;

    .line 666
    check-cast p4, Ljava/util/HashMap;

    .line 668
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v0, p2}, Landroid/support/constraint/motion/MotionLayout;->lookUpConstraintId(Ljava/lang/String;)I

    move-result p2

    .line 669
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v0, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v0, p2}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v6

    if-nez v6, :cond_15

    return-void

    .line 679
    :cond_15
    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/support/constraint/ConstraintSet;->clear(I)V

    const/4 v7, 0x0

    .line 681
    invoke-static {p1, v6, p3, p4, v7}, Landroid/support/constraint/motion/DesignTool;->SetDimensions(ILandroid/support/constraint/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;I)V

    const/4 v8, 0x1

    .line 682
    invoke-static {p1, v6, p3, p4, v8}, Landroid/support/constraint/motion/DesignTool;->SetDimensions(ILandroid/support/constraint/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;I)V

    const/4 v4, 0x6

    const/4 v5, 0x6

    move v0, p1

    move-object v1, v6

    move-object v2, p3

    move-object v3, p4

    .line 684
    invoke-static/range {v0 .. v5}, Landroid/support/constraint/motion/DesignTool;->Connect(ILandroid/support/constraint/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V

    const/4 v5, 0x7

    .line 685
    invoke-static/range {v0 .. v5}, Landroid/support/constraint/motion/DesignTool;->Connect(ILandroid/support/constraint/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V

    const/4 v4, 0x7

    .line 686
    invoke-static/range {v0 .. v5}, Landroid/support/constraint/motion/DesignTool;->Connect(ILandroid/support/constraint/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V

    const/4 v5, 0x6

    .line 687
    invoke-static/range {v0 .. v5}, Landroid/support/constraint/motion/DesignTool;->Connect(ILandroid/support/constraint/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 688
    invoke-static/range {v0 .. v5}, Landroid/support/constraint/motion/DesignTool;->Connect(ILandroid/support/constraint/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V

    const/4 v5, 0x2

    .line 689
    invoke-static/range {v0 .. v5}, Landroid/support/constraint/motion/DesignTool;->Connect(ILandroid/support/constraint/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V

    const/4 v4, 0x2

    .line 690
    invoke-static/range {v0 .. v5}, Landroid/support/constraint/motion/DesignTool;->Connect(ILandroid/support/constraint/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V

    const/4 v5, 0x1

    .line 691
    invoke-static/range {v0 .. v5}, Landroid/support/constraint/motion/DesignTool;->Connect(ILandroid/support/constraint/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V

    const/4 v4, 0x3

    const/4 v5, 0x3

    .line 692
    invoke-static/range {v0 .. v5}, Landroid/support/constraint/motion/DesignTool;->Connect(ILandroid/support/constraint/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V

    const/4 v5, 0x4

    .line 693
    invoke-static/range {v0 .. v5}, Landroid/support/constraint/motion/DesignTool;->Connect(ILandroid/support/constraint/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V

    const/4 v4, 0x4

    const/4 v5, 0x3

    .line 694
    invoke-static/range {v0 .. v5}, Landroid/support/constraint/motion/DesignTool;->Connect(ILandroid/support/constraint/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V

    const/4 v5, 0x4

    .line 695
    invoke-static/range {v0 .. v5}, Landroid/support/constraint/motion/DesignTool;->Connect(ILandroid/support/constraint/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V

    const/4 v4, 0x5

    const/4 v5, 0x5

    .line 696
    invoke-static/range {v0 .. v5}, Landroid/support/constraint/motion/DesignTool;->Connect(ILandroid/support/constraint/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V

    .line 698
    invoke-static {v6, p3, p4, v7}, Landroid/support/constraint/motion/DesignTool;->SetBias(Landroid/support/constraint/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;I)V

    .line 699
    invoke-static {v6, p3, p4, v8}, Landroid/support/constraint/motion/DesignTool;->SetBias(Landroid/support/constraint/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;I)V

    .line 701
    invoke-static {p1, v6, p3, p4}, Landroid/support/constraint/motion/DesignTool;->SetAbsolutePositions(ILandroid/support/constraint/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;)V

    .line 703
    iget-object p1, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {p1, p2, v6}, Landroid/support/constraint/motion/MotionLayout;->updateState(ILandroid/support/constraint/ConstraintSet;)V

    .line 704
    iget-object p1, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionLayout;->requestLayout()V

    return-void
.end method

.method public setKeyFrame(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/Object;)V
    .registers 6

    .line 476
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v0, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-eqz v0, :cond_27

    .line 477
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v0, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/constraint/motion/MotionScene;->setKeyframe(Landroid/view/View;ILjava/lang/String;Ljava/lang/Object;)V

    .line 478
    iget-object p1, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    int-to-float p2, p2

    const/high16 p3, 0x42c80000    # 100.0f

    div-float/2addr p2, p3

    iput p2, p1, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    .line 479
    iget-object p1, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    const/4 p2, 0x0

    iput p2, p1, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 480
    iget-object p1, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionLayout;->rebuildScene()V

    .line 481
    iget-object p1, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/support/constraint/motion/MotionLayout;->evaluate(Z)V

    :cond_27
    return-void
.end method

.method public setKeyFramePosition(Ljava/lang/Object;IIFF)Z
    .registers 8

    .line 497
    iget-object p2, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object p2, p2, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-eqz p2, :cond_5c

    .line 498
    iget-object p2, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object p2, p2, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/constraint/motion/MotionController;

    .line 499
    iget-object p3, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget p3, p3, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p3, p3, v0

    float-to-int p3, p3

    if-eqz p2, :cond_5c

    .line 500
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v0, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1, p3}, Landroid/support/constraint/motion/MotionScene;->hasKeyFramePosition(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_5c

    const/4 v0, 0x2

    .line 501
    invoke-virtual {p2, v0, p4, p5}, Landroid/support/constraint/motion/MotionController;->getKeyFrameParameter(IFF)F

    move-result v0

    const/4 v1, 0x5

    .line 502
    invoke-virtual {p2, v1, p4, p5}, Landroid/support/constraint/motion/MotionController;->getKeyFrameParameter(IFF)F

    move-result p2

    .line 504
    iget-object p4, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object p4, p4, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p5

    const-string v0, "motion:percentX"

    invoke-virtual {p4, p1, p3, v0, p5}, Landroid/support/constraint/motion/MotionScene;->setKeyframe(Landroid/view/View;ILjava/lang/String;Ljava/lang/Object;)V

    .line 505
    iget-object p4, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object p4, p4, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const-string p5, "motion:percentY"

    invoke-virtual {p4, p1, p3, p5, p2}, Landroid/support/constraint/motion/MotionScene;->setKeyframe(Landroid/view/View;ILjava/lang/String;Ljava/lang/Object;)V

    .line 506
    iget-object p1, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionLayout;->rebuildScene()V

    .line 507
    iget-object p1, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/support/constraint/motion/MotionLayout;->evaluate(Z)V

    .line 508
    iget-object p1, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionLayout;->invalidate()V

    return p2

    :cond_5c
    const/4 p1, 0x0

    return p1
.end method

.method public setKeyframe(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .line 648
    instance-of v0, p1, Landroid/support/constraint/motion/Key;

    if-eqz v0, :cond_13

    .line 649
    check-cast p1, Landroid/support/constraint/motion/Key;

    .line 650
    invoke-virtual {p1, p2, p3}, Landroid/support/constraint/motion/Key;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 651
    iget-object p1, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionLayout;->rebuildScene()V

    .line 652
    iget-object p1, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    :cond_13
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_4

    const-string p1, "motion_base"

    .line 279
    :cond_4
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mLastStartState:Ljava/lang/String;

    if-ne v0, p1, :cond_9

    return-void

    .line 288
    :cond_9
    iput-object p1, p0, Landroid/support/constraint/motion/DesignTool;->mLastStartState:Ljava/lang/String;

    const/4 v0, 0x0

    .line 289
    iput-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mLastEndState:Ljava/lang/String;

    .line 300
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v0, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_1a

    .line 301
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v1, p0, Landroid/support/constraint/motion/DesignTool;->mSceneCache:Landroid/support/constraint/motion/MotionScene;

    iput-object v1, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    :cond_1a
    if-eqz p1, :cond_23

    .line 304
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v0, p1}, Landroid/support/constraint/motion/MotionLayout;->lookUpConstraintId(Ljava/lang/String;)I

    move-result p1

    goto :goto_25

    :cond_23
    sget p1, Landroid/support/constraint/R$id;->motion_base:I

    .line 305
    :goto_25
    iput p1, p0, Landroid/support/constraint/motion/DesignTool;->mLastStartStateId:I

    if-eqz p1, :cond_52

    .line 308
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionLayout;->getStartState()I

    move-result v0

    if-ne p1, v0, :cond_38

    .line 309
    iget-object p1, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/constraint/motion/MotionLayout;->setProgress(F)V

    goto :goto_52

    .line 310
    :cond_38
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionLayout;->getEndState()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-ne p1, v0, :cond_48

    .line 311
    iget-object p1, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {p1, v1}, Landroid/support/constraint/motion/MotionLayout;->setProgress(F)V

    goto :goto_52

    .line 313
    :cond_48
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v0, p1}, Landroid/support/constraint/motion/MotionLayout;->transitionToState(I)V

    .line 314
    iget-object p1, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {p1, v1}, Landroid/support/constraint/motion/MotionLayout;->setProgress(F)V

    .line 317
    :cond_52
    :goto_52
    iget-object p1, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionLayout;->requestLayout()V

    return-void
.end method

.method public setToolPosition(F)V
    .registers 4

    .line 261
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v0, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_c

    .line 262
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v1, p0, Landroid/support/constraint/motion/DesignTool;->mSceneCache:Landroid/support/constraint/motion/MotionScene;

    iput-object v1, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    .line 264
    :cond_c
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v0, p1}, Landroid/support/constraint/motion/MotionLayout;->setProgress(F)V

    .line 265
    iget-object p1, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/constraint/motion/MotionLayout;->evaluate(Z)V

    .line 266
    iget-object p1, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionLayout;->requestLayout()V

    .line 267
    iget-object p1, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionLayout;->invalidate()V

    return-void
.end method

.method public setTransition(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 391
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v0, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_c

    .line 392
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v1, p0, Landroid/support/constraint/motion/DesignTool;->mSceneCache:Landroid/support/constraint/motion/MotionScene;

    iput-object v1, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    .line 394
    :cond_c
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v0, p1}, Landroid/support/constraint/motion/MotionLayout;->lookUpConstraintId(Ljava/lang/String;)I

    move-result v0

    .line 395
    iget-object v1, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v1, p2}, Landroid/support/constraint/motion/MotionLayout;->lookUpConstraintId(Ljava/lang/String;)I

    move-result v1

    .line 397
    iget-object v2, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v2, v0, v1}, Landroid/support/constraint/motion/MotionLayout;->setTransition(II)V

    .line 398
    iput v0, p0, Landroid/support/constraint/motion/DesignTool;->mLastStartStateId:I

    .line 399
    iput v1, p0, Landroid/support/constraint/motion/DesignTool;->mLastEndStateId:I

    .line 401
    iput-object p1, p0, Landroid/support/constraint/motion/DesignTool;->mLastStartState:Ljava/lang/String;

    .line 402
    iput-object p2, p0, Landroid/support/constraint/motion/DesignTool;->mLastEndState:Ljava/lang/String;

    return-void
.end method

.method public setViewDebug(Ljava/lang/Object;I)V
    .registers 4

    .line 521
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v0, v0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/constraint/motion/MotionController;

    if-eqz p1, :cond_14

    .line 523
    invoke-virtual {p1, p2}, Landroid/support/constraint/motion/MotionController;->setDrawPath(I)V

    .line 524
    iget-object p1, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionLayout;->invalidate()V

    :cond_14
    return-void
.end method
