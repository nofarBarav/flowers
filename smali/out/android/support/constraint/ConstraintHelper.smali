.class public abstract Landroid/support/constraint/ConstraintHelper;
.super Landroid/view/View;
.source "ConstraintHelper.java"


# instance fields
.field protected mCount:I

.field protected mHelperWidget:Landroid/support/constraint/solver/widgets/Helper;

.field protected mIds:[I

.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mReferenceIds:Ljava/lang/String;

.field protected mUseViewMeasure:Z

.field private mViews:[Landroid/view/View;

.field protected myContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 79
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x20

    new-array v0, v0, [I

    .line 48
    iput-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mIds:[I

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Landroid/support/constraint/ConstraintHelper;->mUseViewMeasure:Z

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mViews:[Landroid/view/View;

    .line 76
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/support/constraint/ConstraintHelper;->mMap:Ljava/util/HashMap;

    .line 80
    iput-object p1, p0, Landroid/support/constraint/ConstraintHelper;->myContext:Landroid/content/Context;

    .line 81
    invoke-virtual {p0, v0}, Landroid/support/constraint/ConstraintHelper;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 85
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x20

    new-array v0, v0, [I

    .line 48
    iput-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mIds:[I

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Landroid/support/constraint/ConstraintHelper;->mUseViewMeasure:Z

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mViews:[Landroid/view/View;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mMap:Ljava/util/HashMap;

    .line 86
    iput-object p1, p0, Landroid/support/constraint/ConstraintHelper;->myContext:Landroid/content/Context;

    .line 87
    invoke-virtual {p0, p2}, Landroid/support/constraint/ConstraintHelper;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 91
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, 0x20

    new-array p3, p3, [I

    .line 48
    iput-object p3, p0, Landroid/support/constraint/ConstraintHelper;->mIds:[I

    const/4 p3, 0x0

    .line 65
    iput-boolean p3, p0, Landroid/support/constraint/ConstraintHelper;->mUseViewMeasure:Z

    const/4 p3, 0x0

    .line 74
    iput-object p3, p0, Landroid/support/constraint/ConstraintHelper;->mViews:[Landroid/view/View;

    .line 76
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Landroid/support/constraint/ConstraintHelper;->mMap:Ljava/util/HashMap;

    .line 92
    iput-object p1, p0, Landroid/support/constraint/ConstraintHelper;->myContext:Landroid/content/Context;

    .line 93
    invoke-virtual {p0, p2}, Landroid/support/constraint/ConstraintHelper;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private addID(Ljava/lang/String;)V
    .registers 5

    if-eqz p1, :cond_4e

    .line 241
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_4e

    .line 244
    :cond_9
    iget-object v0, p0, Landroid/support/constraint/ConstraintHelper;->myContext:Landroid/content/Context;

    if-nez v0, :cond_e

    return-void

    .line 248
    :cond_e
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 251
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintHelper;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/support/constraint/ConstraintLayout;

    if-eqz v0, :cond_20

    .line 252
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintHelper;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    .line 254
    :cond_20
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintHelper;->findId(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_33

    .line 256
    iget-object v1, p0, Landroid/support/constraint/ConstraintHelper;->mMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    invoke-direct {p0, v0}, Landroid/support/constraint/ConstraintHelper;->addRscID(I)V

    goto :goto_4e

    .line 259
    :cond_33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find id of \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ConstraintHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    :goto_4e
    return-void
.end method

.method private addRscID(I)V
    .registers 5

    .line 192
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintHelper;->getId()I

    move-result v0

    if-ne p1, v0, :cond_7

    return-void

    .line 195
    :cond_7
    iget v0, p0, Landroid/support/constraint/ConstraintHelper;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroid/support/constraint/ConstraintHelper;->mIds:[I

    array-length v2, v1

    if-le v0, v2, :cond_19

    .line 196
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mIds:[I

    .line 198
    :cond_19
    iget-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mIds:[I

    iget v1, p0, Landroid/support/constraint/ConstraintHelper;->mCount:I

    aput p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 199
    iput v1, p0, Landroid/support/constraint/ConstraintHelper;->mCount:I

    return-void
.end method

.method private convertReferenceString(Landroid/view/View;Ljava/lang/String;)[I
    .registers 7

    const-string v0, ","

    .line 503
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 504
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 505
    array-length p1, p2

    new-array p1, p1, [I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 507
    :goto_e
    array-length v2, p2

    if-ge v0, v2, :cond_25

    .line 508
    aget-object v2, p2, v0

    .line 509
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 510
    invoke-direct {p0, v2}, Landroid/support/constraint/ConstraintHelper;->findId(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_22

    add-int/lit8 v3, v1, 0x1

    .line 512
    aput v2, p1, v1

    move v1, v3

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 515
    :cond_25
    array-length p2, p2

    if-eq v1, p2, :cond_2c

    .line 516
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    :cond_2c
    return-object p1
.end method

.method private findId(Landroid/support/constraint/ConstraintLayout;Ljava/lang/String;)I
    .registers 10

    const/4 v0, 0x0

    if-eqz p2, :cond_3a

    if-nez p1, :cond_6

    goto :goto_3a

    .line 321
    :cond_6
    iget-object v1, p0, Landroid/support/constraint/ConstraintHelper;->myContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez v1, :cond_f

    return v0

    .line 325
    :cond_f
    invoke-virtual {p1}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v2, :cond_3a

    .line 327
    invoke-virtual {p1, v3}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 328
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_37

    const/4 v5, 0x0

    .line 331
    :try_start_22
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v5
    :try_end_2a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_22 .. :try_end_2a} :catch_2b

    goto :goto_2c

    :catch_2b
    nop

    .line 335
    :goto_2c
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 336
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result p1

    return p1

    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_3a
    :goto_3a
    return v0
.end method

.method private findId(Ljava/lang/String;)I
    .registers 7

    .line 270
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintHelper;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/support/constraint/ConstraintLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 271
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintHelper;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    goto :goto_11

    :cond_10
    move-object v0, v1

    .line 276
    :goto_11
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintHelper;->isInEditMode()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_28

    if-eqz v0, :cond_28

    .line 277
    invoke-virtual {v0, v3, p1}, Landroid/support/constraint/ConstraintLayout;->getDesignInformation(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 278
    instance-of v4, v2, Ljava/lang/Integer;

    if-eqz v4, :cond_28

    .line 279
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_28
    if-nez v3, :cond_30

    if-eqz v0, :cond_30

    .line 286
    invoke-direct {p0, v0, p1}, Landroid/support/constraint/ConstraintHelper;->findId(Landroid/support/constraint/ConstraintLayout;Ljava/lang/String;)I

    move-result v3

    :cond_30
    if-nez v3, :cond_3e

    .line 291
    :try_start_32
    const-class v0, Landroid/support/constraint/R$id;

    .line 292
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 293
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3c} :catch_3d

    goto :goto_3e

    :catch_3d
    nop

    :cond_3e
    :goto_3e
    if-nez v3, :cond_52

    .line 302
    iget-object v0, p0, Landroid/support/constraint/ConstraintHelper;->myContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Landroid/support/constraint/ConstraintHelper;->myContext:Landroid/content/Context;

    .line 303
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    .line 302
    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    :cond_52
    return v3
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 5

    if-ne p1, p0, :cond_3

    return-void

    .line 131
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    const-string v2, "ConstraintHelper"

    if-ne v0, v1, :cond_12

    const-string p1, "Views added to a ConstraintHelper need to have an id"

    .line 132
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 135
    :cond_12
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1e

    const-string p1, "Views added to a ConstraintHelper need to have a parent"

    .line 136
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1e
    const/4 v0, 0x0

    .line 139
    iput-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mReferenceIds:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintHelper;->addRscID(I)V

    .line 141
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintHelper;->requestLayout()V

    return-void
.end method

.method protected applyLayoutFeatures()V
    .registers 3

    .line 390
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintHelper;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 391
    instance-of v1, v0, Landroid/support/constraint/ConstraintLayout;

    if-eqz v1, :cond_f

    .line 392
    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {p0, v0}, Landroid/support/constraint/ConstraintHelper;->applyLayoutFeatures(Landroid/support/constraint/ConstraintLayout;)V

    :cond_f
    return-void
.end method

.method protected applyLayoutFeatures(Landroid/support/constraint/ConstraintLayout;)V
    .registers 9

    .line 369
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintHelper;->getVisibility()I

    move-result v0

    .line 371
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x0

    if-lt v1, v2, :cond_10

    .line 372
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintHelper;->getElevation()F

    move-result v1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    const/4 v4, 0x0

    .line 374
    :goto_12
    iget v5, p0, Landroid/support/constraint/ConstraintHelper;->mCount:I

    if-ge v4, v5, :cond_36

    .line 375
    iget-object v5, p0, Landroid/support/constraint/ConstraintHelper;->mIds:[I

    aget v5, v5, v4

    .line 376
    invoke-virtual {p1, v5}, Landroid/support/constraint/ConstraintLayout;->getViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_33

    .line 378
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    cmpl-float v6, v1, v3

    if-lez v6, :cond_33

    .line 379
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v2, :cond_33

    .line 380
    invoke-virtual {v5}, Landroid/view/View;->getTranslationZ()F

    move-result v6

    add-float/2addr v6, v1

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationZ(F)V

    :cond_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_36
    return-void
.end method

.method public getReferencedIds()[I
    .registers 3

    .line 173
    iget-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mIds:[I

    iget v1, p0, Landroid/support/constraint/ConstraintHelper;->mCount:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method protected getViews(Landroid/support/constraint/ConstraintLayout;)[Landroid/view/View;
    .registers 5

    .line 443
    iget-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mViews:[Landroid/view/View;

    if-eqz v0, :cond_9

    array-length v0, v0

    iget v1, p0, Landroid/support/constraint/ConstraintHelper;->mCount:I

    if-eq v0, v1, :cond_f

    .line 444
    :cond_9
    iget v0, p0, Landroid/support/constraint/ConstraintHelper;->mCount:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mViews:[Landroid/view/View;

    :cond_f
    const/4 v0, 0x0

    .line 447
    :goto_10
    iget v1, p0, Landroid/support/constraint/ConstraintHelper;->mCount:I

    if-ge v0, v1, :cond_23

    .line 448
    iget-object v1, p0, Landroid/support/constraint/ConstraintHelper;->mIds:[I

    aget v1, v1, v0

    .line 449
    iget-object v2, p0, Landroid/support/constraint/ConstraintHelper;->mViews:[Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/support/constraint/ConstraintLayout;->getViewById(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 451
    :cond_23
    iget-object p1, p0, Landroid/support/constraint/ConstraintHelper;->mViews:[Landroid/view/View;

    return-object p1
.end method

.method protected init(Landroid/util/AttributeSet;)V
    .registers 6

    if-eqz p1, :cond_27

    .line 101
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 102
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_11
    if-ge v1, v0, :cond_27

    .line 104
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 105
    sget v3, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_constraint_referenced_ids:I

    if-ne v2, v3, :cond_24

    .line 106
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/support/constraint/ConstraintHelper;->mReferenceIds:Ljava/lang/String;

    .line 107
    invoke-virtual {p0, v2}, Landroid/support/constraint/ConstraintHelper;->setIds(Ljava/lang/String;)V

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_27
    return-void
.end method

.method public loadParameters(Landroid/support/constraint/ConstraintSet$Constraint;Landroid/support/constraint/solver/widgets/HelperWidget;Landroid/support/constraint/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/constraint/ConstraintSet$Constraint;",
            "Landroid/support/constraint/solver/widgets/HelperWidget;",
            "Landroid/support/constraint/ConstraintLayout$LayoutParams;",
            "Landroid/util/SparseArray<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;)V"
        }
    .end annotation

    .line 483
    iget-object p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget-object p3, p3, Landroid/support/constraint/ConstraintSet$Layout;->mReferenceIds:[I

    if-eqz p3, :cond_e

    .line 484
    iget-object p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget-object p3, p3, Landroid/support/constraint/ConstraintSet$Layout;->mReferenceIds:[I

    invoke-virtual {p0, p3}, Landroid/support/constraint/ConstraintHelper;->setReferencedIds([I)V

    goto :goto_2a

    .line 485
    :cond_e
    iget-object p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget-object p3, p3, Landroid/support/constraint/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    if-eqz p3, :cond_2a

    iget-object p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget-object p3, p3, Landroid/support/constraint/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    .line 486
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_2a

    .line 487
    iget-object p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget-object v0, v0, Landroid/support/constraint/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    invoke-direct {p0, p0, v0}, Landroid/support/constraint/ConstraintHelper;->convertReferenceString(Landroid/view/View;Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p3, Landroid/support/constraint/ConstraintSet$Layout;->mReferenceIds:[I

    .line 490
    :cond_2a
    :goto_2a
    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/HelperWidget;->removeAllIds()V

    .line 491
    iget-object p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget-object p3, p3, Landroid/support/constraint/ConstraintSet$Layout;->mReferenceIds:[I

    if-eqz p3, :cond_4f

    const/4 p3, 0x0

    .line 492
    :goto_34
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget-object v0, v0, Landroid/support/constraint/ConstraintSet$Layout;->mReferenceIds:[I

    array-length v0, v0

    if-ge p3, v0, :cond_4f

    .line 493
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget-object v0, v0, Landroid/support/constraint/ConstraintSet$Layout;->mReferenceIds:[I

    aget v0, v0, p3

    .line 494
    invoke-virtual {p4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_4c

    .line 496
    invoke-virtual {p2, v0}, Landroid/support/constraint/solver/widgets/HelperWidget;->add(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    :cond_4c
    add-int/lit8 p3, p3, 0x1

    goto :goto_34

    :cond_4f
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 115
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 116
    iget-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mReferenceIds:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 117
    invoke-virtual {p0, v0}, Landroid/support/constraint/ConstraintHelper;->setIds(Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method

.method protected onMeasure(II)V
    .registers 4

    .line 215
    iget-boolean v0, p0, Landroid/support/constraint/ConstraintHelper;->mUseViewMeasure:Z

    if-eqz v0, :cond_8

    .line 216
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    goto :goto_c

    :cond_8
    const/4 p1, 0x0

    .line 218
    invoke-virtual {p0, p1, p1}, Landroid/support/constraint/ConstraintHelper;->setMeasuredDimension(II)V

    :goto_c
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .registers 6

    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_8

    return-void

    :cond_8
    const/4 v0, 0x0

    .line 154
    iput-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mReferenceIds:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 155
    :goto_d
    iget v2, p0, Landroid/support/constraint/ConstraintHelper;->mCount:I

    if-ge v1, v2, :cond_35

    .line 156
    iget-object v2, p0, Landroid/support/constraint/ConstraintHelper;->mIds:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_32

    .line 157
    :goto_17
    iget p1, p0, Landroid/support/constraint/ConstraintHelper;->mCount:I

    add-int/lit8 v2, p1, -0x1

    if-ge v1, v2, :cond_27

    .line 158
    iget-object p1, p0, Landroid/support/constraint/ConstraintHelper;->mIds:[I

    add-int/lit8 v2, v1, 0x1

    aget v3, p1, v2

    aput v3, p1, v1

    move v1, v2

    goto :goto_17

    .line 160
    :cond_27
    iget-object v1, p0, Landroid/support/constraint/ConstraintHelper;->mIds:[I

    add-int/lit8 v2, p1, -0x1

    aput v0, v1, v2

    add-int/lit8 p1, p1, -0x1

    .line 161
    iput p1, p0, Landroid/support/constraint/ConstraintHelper;->mCount:I

    goto :goto_35

    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 165
    :cond_35
    :goto_35
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintHelper;->requestLayout()V

    return-void
.end method

.method public resolveRtl(Landroid/support/constraint/solver/widgets/ConstraintWidget;Z)V
    .registers 3

    return-void
.end method

.method protected setIds(Ljava/lang/String;)V
    .registers 5

    .line 347
    iput-object p1, p0, Landroid/support/constraint/ConstraintHelper;->mReferenceIds:Ljava/lang/String;

    if-nez p1, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 352
    iput v0, p0, Landroid/support/constraint/ConstraintHelper;->mCount:I

    :goto_8
    const/16 v1, 0x2c

    .line 354
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_19

    .line 356
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintHelper;->addID(Ljava/lang/String;)V

    return-void

    .line 359
    :cond_19
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/constraint/ConstraintHelper;->addID(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    goto :goto_8
.end method

.method public setReferencedIds([I)V
    .registers 4

    const/4 v0, 0x0

    .line 181
    iput-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mReferenceIds:Ljava/lang/String;

    const/4 v0, 0x0

    .line 182
    iput v0, p0, Landroid/support/constraint/ConstraintHelper;->mCount:I

    .line 183
    :goto_6
    array-length v1, p1

    if-ge v0, v1, :cond_11

    .line 184
    aget v1, p1, v0

    invoke-direct {p0, v1}, Landroid/support/constraint/ConstraintHelper;->addRscID(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_11
    return-void
.end method

.method public updatePostConstraints(Landroid/support/constraint/ConstraintLayout;)V
    .registers 2

    return-void
.end method

.method public updatePostLayout(Landroid/support/constraint/ConstraintLayout;)V
    .registers 2

    return-void
.end method

.method public updatePostMeasure(Landroid/support/constraint/ConstraintLayout;)V
    .registers 2

    return-void
.end method

.method public updatePreDraw(Landroid/support/constraint/ConstraintLayout;)V
    .registers 2

    return-void
.end method

.method public updatePreLayout(Landroid/support/constraint/ConstraintLayout;)V
    .registers 7

    .line 403
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintHelper;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 404
    iget-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mReferenceIds:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/support/constraint/ConstraintHelper;->setIds(Ljava/lang/String;)V

    .line 406
    :cond_b
    iget-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mHelperWidget:Landroid/support/constraint/solver/widgets/Helper;

    if-nez v0, :cond_10

    return-void

    .line 409
    :cond_10
    invoke-interface {v0}, Landroid/support/constraint/solver/widgets/Helper;->removeAllIds()V

    const/4 v0, 0x0

    .line 410
    :goto_14
    iget v1, p0, Landroid/support/constraint/ConstraintHelper;->mCount:I

    if-ge v0, v1, :cond_53

    .line 411
    iget-object v1, p0, Landroid/support/constraint/ConstraintHelper;->mIds:[I

    aget v1, v1, v0

    .line 412
    invoke-virtual {p1, v1}, Landroid/support/constraint/ConstraintLayout;->getViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_45

    .line 416
    iget-object v3, p0, Landroid/support/constraint/ConstraintHelper;->mMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 417
    invoke-direct {p0, p1, v1}, Landroid/support/constraint/ConstraintHelper;->findId(Landroid/support/constraint/ConstraintLayout;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_45

    .line 419
    iget-object v2, p0, Landroid/support/constraint/ConstraintHelper;->mIds:[I

    aput v3, v2, v0

    .line 420
    iget-object v2, p0, Landroid/support/constraint/ConstraintHelper;->mMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    invoke-virtual {p1, v3}, Landroid/support/constraint/ConstraintLayout;->getViewById(I)Landroid/view/View;

    move-result-object v2

    :cond_45
    if-eqz v2, :cond_50

    .line 425
    iget-object v1, p0, Landroid/support/constraint/ConstraintHelper;->mHelperWidget:Landroid/support/constraint/solver/widgets/Helper;

    invoke-virtual {p1, v2}, Landroid/support/constraint/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/support/constraint/solver/widgets/Helper;->add(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    :cond_50
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 428
    :cond_53
    iget-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mHelperWidget:Landroid/support/constraint/solver/widgets/Helper;

    iget-object p1, p1, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-interface {v0, p1}, Landroid/support/constraint/solver/widgets/Helper;->updateConstraints(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;)V

    return-void
.end method

.method public updatePreLayout(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/widgets/Helper;Landroid/util/SparseArray;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;",
            "Landroid/support/constraint/solver/widgets/Helper;",
            "Landroid/util/SparseArray<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;)V"
        }
    .end annotation

    .line 434
    invoke-interface {p2}, Landroid/support/constraint/solver/widgets/Helper;->removeAllIds()V

    const/4 p1, 0x0

    .line 435
    :goto_4
    iget v0, p0, Landroid/support/constraint/ConstraintHelper;->mCount:I

    if-ge p1, v0, :cond_18

    .line 436
    iget-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mIds:[I

    aget v0, v0, p1

    .line 437
    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-interface {p2, v0}, Landroid/support/constraint/solver/widgets/Helper;->add(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_18
    return-void
.end method

.method public validateParams()V
    .registers 3

    .line 227
    iget-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mHelperWidget:Landroid/support/constraint/solver/widgets/Helper;

    if-nez v0, :cond_5

    return-void

    .line 230
    :cond_5
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintHelper;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 231
    instance-of v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    if-eqz v1, :cond_15

    .line 232
    check-cast v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 233
    iget-object v1, p0, Landroid/support/constraint/ConstraintHelper;->mHelperWidget:Landroid/support/constraint/solver/widgets/Helper;

    check-cast v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iput-object v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    :cond_15
    return-void
.end method
