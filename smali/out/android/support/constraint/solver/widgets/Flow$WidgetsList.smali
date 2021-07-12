.class Landroid/support/constraint/solver/widgets/Flow$WidgetsList;
.super Ljava/lang/Object;
.source "Flow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/solver/widgets/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WidgetsList"
.end annotation


# instance fields
.field private biggest:Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field biggestDimension:I

.field private mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field private mCount:I

.field private mHeight:I

.field private mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field private mMax:I

.field private mNbMatchConstraintsWidgets:I

.field private mOrientation:I

.field private mPaddingBottom:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mPaddingTop:I

.field private mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field private mStartIndex:I

.field private mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field private mWidth:I

.field final synthetic this$0:Landroid/support/constraint/solver/widgets/Flow;


# direct methods
.method public constructor <init>(Landroid/support/constraint/solver/widgets/Flow;ILandroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)V
    .registers 10

    .line 353
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 332
    iput v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mOrientation:I

    const/4 v1, 0x0

    .line 333
    iput-object v1, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->biggest:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 334
    iput v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->biggestDimension:I

    .line 339
    iput v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mPaddingLeft:I

    .line 340
    iput v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mPaddingTop:I

    .line 341
    iput v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mPaddingRight:I

    .line 342
    iput v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mPaddingBottom:I

    .line 343
    iput v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mWidth:I

    .line 344
    iput v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mHeight:I

    .line 345
    iput v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    .line 346
    iput v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mCount:I

    .line 347
    iput v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mNbMatchConstraintsWidgets:I

    .line 348
    iput v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mMax:I

    .line 354
    iput p2, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mOrientation:I

    .line 355
    iput-object p3, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 356
    iput-object p4, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 357
    iput-object p5, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 358
    iput-object p6, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 359
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/Flow;->getPaddingLeft()I

    move-result p2

    iput p2, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mPaddingLeft:I

    .line 360
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/Flow;->getPaddingTop()I

    move-result p2

    iput p2, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mPaddingTop:I

    .line 361
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/Flow;->getPaddingRight()I

    move-result p2

    iput p2, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mPaddingRight:I

    .line 362
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/Flow;->getPaddingBottom()I

    move-result p1

    iput p1, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mPaddingBottom:I

    .line 363
    iput p7, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mMax:I

    return-void
.end method

.method static synthetic access$2000(Landroid/support/constraint/solver/widgets/Flow$WidgetsList;)Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .registers 1

    .line 331
    iget-object p0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->biggest:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    return-object p0
.end method

.method private recomputeDimensions()V
    .registers 10

    const/4 v0, 0x0

    .line 721
    iput v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mWidth:I

    .line 722
    iput v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mHeight:I

    const/4 v1, 0x0

    .line 723
    iput-object v1, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->biggest:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 724
    iput v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->biggestDimension:I

    .line 725
    iget v1, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mCount:I

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_90

    .line 727
    iget v3, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    add-int/2addr v3, v2

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v4}, Landroid/support/constraint/solver/widgets/Flow;->access$400(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v4

    if-lt v3, v4, :cond_1c

    goto/16 :goto_90

    .line 730
    :cond_1c
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v3}, Landroid/support/constraint/solver/widgets/Flow;->access$500(Landroid/support/constraint/solver/widgets/Flow;)[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v3

    iget v4, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    add-int/2addr v4, v2

    aget-object v3, v3, v4

    .line 731
    iget v4, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mOrientation:I

    const/16 v5, 0x8

    if-nez v4, :cond_5b

    .line 732
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v4

    .line 733
    iget-object v6, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v6}, Landroid/support/constraint/solver/widgets/Flow;->access$000(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v6

    .line 734
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v7

    if-ne v7, v5, :cond_3e

    const/4 v6, 0x0

    .line 737
    :cond_3e
    iget v5, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mWidth:I

    add-int/2addr v4, v6

    add-int/2addr v5, v4

    iput v5, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mWidth:I

    .line 738
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    iget v5, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mMax:I

    invoke-static {v4, v3, v5}, Landroid/support/constraint/solver/widgets/Flow;->access$300(Landroid/support/constraint/solver/widgets/Flow;Landroid/support/constraint/solver/widgets/ConstraintWidget;I)I

    move-result v4

    .line 739
    iget-object v5, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->biggest:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v5, :cond_54

    iget v5, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->biggestDimension:I

    if-ge v5, v4, :cond_8c

    .line 740
    :cond_54
    iput-object v3, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->biggest:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 741
    iput v4, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->biggestDimension:I

    .line 742
    iput v4, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mHeight:I

    goto :goto_8c

    .line 745
    :cond_5b
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    iget v6, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mMax:I

    invoke-static {v4, v3, v6}, Landroid/support/constraint/solver/widgets/Flow;->access$200(Landroid/support/constraint/solver/widgets/Flow;Landroid/support/constraint/solver/widgets/ConstraintWidget;I)I

    move-result v4

    .line 746
    iget-object v6, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    iget v7, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mMax:I

    invoke-static {v6, v3, v7}, Landroid/support/constraint/solver/widgets/Flow;->access$300(Landroid/support/constraint/solver/widgets/Flow;Landroid/support/constraint/solver/widgets/ConstraintWidget;I)I

    move-result v6

    .line 747
    iget-object v7, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v7}, Landroid/support/constraint/solver/widgets/Flow;->access$100(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v7

    .line 748
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v8

    if-ne v8, v5, :cond_78

    const/4 v7, 0x0

    .line 751
    :cond_78
    iget v5, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mHeight:I

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    iput v5, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mHeight:I

    .line 752
    iget-object v5, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->biggest:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v5, :cond_86

    iget v5, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->biggestDimension:I

    if-ge v5, v4, :cond_8c

    .line 753
    :cond_86
    iput-object v3, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->biggest:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 754
    iput v4, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->biggestDimension:I

    .line 755
    iput v4, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mWidth:I

    :cond_8c
    :goto_8c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_d

    :cond_90
    :goto_90
    return-void
.end method


# virtual methods
.method public add(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .registers 8

    .line 409
    iget v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mOrientation:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_49

    .line 410
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    iget v3, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mMax:I

    invoke-static {v0, p1, v3}, Landroid/support/constraint/solver/widgets/Flow;->access$200(Landroid/support/constraint/solver/widgets/Flow;Landroid/support/constraint/solver/widgets/ConstraintWidget;I)I

    move-result v0

    .line 411
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v4, :cond_1e

    .line 412
    iget v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mNbMatchConstraintsWidgets:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mNbMatchConstraintsWidgets:I

    const/4 v0, 0x0

    .line 415
    :cond_1e
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v3}, Landroid/support/constraint/solver/widgets/Flow;->access$000(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v3

    .line 416
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v4

    if-ne v4, v1, :cond_2b

    goto :goto_2c

    :cond_2b
    move v2, v3

    .line 419
    :goto_2c
    iget v1, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mWidth:I

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    iput v1, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mWidth:I

    .line 420
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    iget v1, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mMax:I

    invoke-static {v0, p1, v1}, Landroid/support/constraint/solver/widgets/Flow;->access$300(Landroid/support/constraint/solver/widgets/Flow;Landroid/support/constraint/solver/widgets/ConstraintWidget;I)I

    move-result v0

    .line 421
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->biggest:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v1, :cond_42

    iget v1, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->biggestDimension:I

    if-ge v1, v0, :cond_8a

    .line 422
    :cond_42
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->biggest:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 423
    iput v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->biggestDimension:I

    .line 424
    iput v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mHeight:I

    goto :goto_8a

    .line 427
    :cond_49
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    iget v3, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mMax:I

    invoke-static {v0, p1, v3}, Landroid/support/constraint/solver/widgets/Flow;->access$200(Landroid/support/constraint/solver/widgets/Flow;Landroid/support/constraint/solver/widgets/ConstraintWidget;I)I

    move-result v0

    .line 428
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    iget v4, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mMax:I

    invoke-static {v3, p1, v4}, Landroid/support/constraint/solver/widgets/Flow;->access$300(Landroid/support/constraint/solver/widgets/Flow;Landroid/support/constraint/solver/widgets/ConstraintWidget;I)I

    move-result v3

    .line 429
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v4

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_68

    .line 430
    iget v3, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mNbMatchConstraintsWidgets:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mNbMatchConstraintsWidgets:I

    const/4 v3, 0x0

    .line 433
    :cond_68
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v4}, Landroid/support/constraint/solver/widgets/Flow;->access$100(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v4

    .line 434
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v5

    if-ne v5, v1, :cond_75

    goto :goto_76

    :cond_75
    move v2, v4

    .line 437
    :goto_76
    iget v1, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mHeight:I

    add-int/2addr v3, v2

    add-int/2addr v1, v3

    iput v1, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mHeight:I

    .line 438
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->biggest:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v1, :cond_84

    iget v1, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->biggestDimension:I

    if-ge v1, v0, :cond_8a

    .line 439
    :cond_84
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->biggest:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 440
    iput v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->biggestDimension:I

    .line 441
    iput v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mWidth:I

    .line 444
    :cond_8a
    :goto_8a
    iget p1, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mCount:I

    return-void
.end method

.method public clear()V
    .registers 3

    const/4 v0, 0x0

    .line 383
    iput v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->biggestDimension:I

    const/4 v1, 0x0

    .line 384
    iput-object v1, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->biggest:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 385
    iput v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mWidth:I

    .line 386
    iput v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mHeight:I

    .line 387
    iput v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    .line 388
    iput v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mCount:I

    .line 389
    iput v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mNbMatchConstraintsWidgets:I

    return-void
.end method

.method public createConstraints(ZIZ)V
    .registers 20

    move-object/from16 v0, p0

    .line 448
    iget v1, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mCount:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v1, :cond_27

    .line 450
    iget v4, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    add-int/2addr v4, v3

    iget-object v5, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v5}, Landroid/support/constraint/solver/widgets/Flow;->access$400(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v5

    if-lt v4, v5, :cond_14

    goto :goto_27

    .line 453
    :cond_14
    iget-object v4, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v4}, Landroid/support/constraint/solver/widgets/Flow;->access$500(Landroid/support/constraint/solver/widgets/Flow;)[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    iget v5, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    add-int/2addr v5, v3

    aget-object v4, v4, v5

    if-eqz v4, :cond_24

    .line 455
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->resetAnchors()V

    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_27
    :goto_27
    if-eqz v1, :cond_35c

    .line 458
    iget-object v3, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->biggest:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-nez v3, :cond_2f

    goto/16 :goto_35c

    :cond_2f
    if-eqz p3, :cond_35

    if-nez p2, :cond_35

    const/4 v4, 0x1

    goto :goto_36

    :cond_35
    const/4 v4, 0x0

    :goto_36
    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    :goto_3a
    if-ge v6, v1, :cond_67

    if-eqz p1, :cond_42

    add-int/lit8 v9, v1, -0x1

    sub-int/2addr v9, v6

    goto :goto_43

    :cond_42
    move v9, v6

    .line 470
    :goto_43
    iget v10, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    add-int/2addr v10, v9

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v11}, Landroid/support/constraint/solver/widgets/Flow;->access$400(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v11

    if-lt v10, v11, :cond_4f

    goto :goto_67

    .line 473
    :cond_4f
    iget-object v10, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v10}, Landroid/support/constraint/solver/widgets/Flow;->access$500(Landroid/support/constraint/solver/widgets/Flow;)[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v10

    iget v11, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    add-int/2addr v11, v9

    aget-object v9, v10, v11

    .line 474
    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v9

    if-nez v9, :cond_64

    if-ne v7, v5, :cond_63

    move v7, v6

    :cond_63
    move v8, v6

    :cond_64
    add-int/lit8 v6, v6, 0x1

    goto :goto_3a

    :cond_67
    :goto_67
    const/4 v6, 0x0

    .line 483
    iget v9, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mOrientation:I

    if-nez v9, :cond_1eb

    .line 484
    iget-object v9, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->biggest:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 485
    iget-object v10, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v10}, Landroid/support/constraint/solver/widgets/Flow;->access$600(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalChainStyle(I)V

    .line 486
    iget v10, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mPaddingTop:I

    if-lez p2, :cond_82

    .line 488
    iget-object v11, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v11}, Landroid/support/constraint/solver/widgets/Flow;->access$100(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v11

    add-int/2addr v10, v11

    .line 490
    :cond_82
    iget-object v11, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v12, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v11, v12, v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    if-eqz p3, :cond_94

    .line 492
    iget-object v10, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v12, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mPaddingBottom:I

    invoke-virtual {v10, v11, v12}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    :cond_94
    if-lez p2, :cond_a1

    .line 495
    iget-object v10, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 496
    iget-object v11, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v10, v11, v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    .line 500
    :cond_a1
    iget-object v10, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v10}, Landroid/support/constraint/solver/widgets/Flow;->access$700(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_db

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->hasBaseline()Z

    move-result v10

    if-nez v10, :cond_db

    const/4 v10, 0x0

    :goto_b1
    if-ge v10, v1, :cond_db

    if-eqz p1, :cond_b9

    add-int/lit8 v12, v1, -0x1

    sub-int/2addr v12, v10

    goto :goto_ba

    :cond_b9
    move v12, v10

    .line 506
    :goto_ba
    iget v13, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    add-int/2addr v13, v12

    iget-object v14, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v14}, Landroid/support/constraint/solver/widgets/Flow;->access$400(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v14

    if-lt v13, v14, :cond_c6

    goto :goto_db

    .line 509
    :cond_c6
    iget-object v13, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v13}, Landroid/support/constraint/solver/widgets/Flow;->access$500(Landroid/support/constraint/solver/widgets/Flow;)[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v13

    iget v14, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    add-int/2addr v14, v12

    aget-object v12, v13, v14

    .line 510
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->hasBaseline()Z

    move-result v13

    if-eqz v13, :cond_d8

    goto :goto_dc

    :cond_d8
    add-int/lit8 v10, v10, 0x1

    goto :goto_b1

    :cond_db
    :goto_db
    move-object v12, v9

    :goto_dc
    const/4 v10, 0x0

    :goto_dd
    if-ge v10, v1, :cond_35c

    if-eqz p1, :cond_e5

    add-int/lit8 v13, v1, -0x1

    sub-int/2addr v13, v10

    goto :goto_e6

    :cond_e5
    move v13, v10

    .line 522
    :goto_e6
    iget v14, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    add-int/2addr v14, v13

    iget-object v15, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v15}, Landroid/support/constraint/solver/widgets/Flow;->access$400(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v15

    if-lt v14, v15, :cond_f3

    goto/16 :goto_35c

    .line 525
    :cond_f3
    iget-object v14, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v14}, Landroid/support/constraint/solver/widgets/Flow;->access$500(Landroid/support/constraint/solver/widgets/Flow;)[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v14

    iget v15, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    add-int/2addr v15, v13

    aget-object v14, v14, v15

    if-nez v10, :cond_109

    .line 527
    iget-object v15, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v3, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mPaddingLeft:I

    invoke-virtual {v14, v15, v11, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)V

    :cond_109
    if-nez v13, :cond_14c

    .line 533
    iget-object v3, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v3}, Landroid/support/constraint/solver/widgets/Flow;->access$800(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v3

    .line 534
    iget-object v11, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v11}, Landroid/support/constraint/solver/widgets/Flow;->access$900(Landroid/support/constraint/solver/widgets/Flow;)F

    move-result v11

    .line 535
    iget v13, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    if-nez v13, :cond_130

    iget-object v13, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v13}, Landroid/support/constraint/solver/widgets/Flow;->access$1000(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v13

    if-eq v13, v5, :cond_130

    .line 536
    iget-object v3, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v3}, Landroid/support/constraint/solver/widgets/Flow;->access$1000(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v3

    .line 537
    iget-object v11, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v11}, Landroid/support/constraint/solver/widgets/Flow;->access$1100(Landroid/support/constraint/solver/widgets/Flow;)F

    move-result v11

    goto :goto_146

    :cond_130
    if-eqz p3, :cond_146

    .line 538
    iget-object v13, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v13}, Landroid/support/constraint/solver/widgets/Flow;->access$1200(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v13

    if-eq v13, v5, :cond_146

    .line 539
    iget-object v3, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v3}, Landroid/support/constraint/solver/widgets/Flow;->access$1200(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v3

    .line 540
    iget-object v11, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v11}, Landroid/support/constraint/solver/widgets/Flow;->access$1300(Landroid/support/constraint/solver/widgets/Flow;)F

    move-result v11

    .line 542
    :cond_146
    :goto_146
    invoke-virtual {v14, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalChainStyle(I)V

    .line 543
    invoke-virtual {v14, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalBiasPercent(F)V

    :cond_14c
    add-int/lit8 v3, v1, -0x1

    if-ne v10, v3, :cond_159

    .line 546
    iget-object v3, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v13, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mPaddingRight:I

    invoke-virtual {v14, v3, v11, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)V

    :cond_159
    if-eqz v6, :cond_184

    .line 549
    iget-object v3, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v13, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v13}, Landroid/support/constraint/solver/widgets/Flow;->access$000(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v13

    invoke-virtual {v3, v11, v13}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    if-ne v10, v7, :cond_171

    .line 551
    iget-object v3, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v11, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mPaddingLeft:I

    invoke-virtual {v3, v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->setGoneMargin(I)V

    .line 553
    :cond_171
    iget-object v3, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3, v11, v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    const/4 v3, 0x1

    add-int/lit8 v11, v8, 0x1

    if-ne v10, v11, :cond_184

    .line 555
    iget-object v3, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v6, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mPaddingRight:I

    invoke-virtual {v3, v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->setGoneMargin(I)V

    :cond_184
    if-eq v14, v9, :cond_1e4

    .line 559
    iget-object v3, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v3}, Landroid/support/constraint/solver/widgets/Flow;->access$700(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v3

    const/4 v6, 0x3

    if-ne v3, v6, :cond_1a5

    .line 560
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->hasBaseline()Z

    move-result v3

    if-eqz v3, :cond_1a5

    if-eq v14, v12, :cond_1a5

    .line 562
    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->hasBaseline()Z

    move-result v3

    if-eqz v3, :cond_1a5

    .line 563
    iget-object v3, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3, v11, v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    goto :goto_1e5

    .line 565
    :cond_1a5
    iget-object v3, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v3}, Landroid/support/constraint/solver/widgets/Flow;->access$700(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v3

    if-eqz v3, :cond_1dc

    const/4 v11, 0x1

    if-eq v3, v11, :cond_1d4

    if-eqz v4, :cond_1c5

    .line 577
    iget-object v3, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v13, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mPaddingTop:I

    invoke-virtual {v3, v11, v13}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    .line 578
    iget-object v3, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v13, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mPaddingBottom:I

    invoke-virtual {v3, v11, v13}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    goto :goto_1e5

    .line 580
    :cond_1c5
    iget-object v3, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3, v11, v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    .line 581
    iget-object v3, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3, v11, v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    goto :goto_1e5

    .line 571
    :cond_1d4
    iget-object v3, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3, v11, v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    goto :goto_1e5

    .line 567
    :cond_1dc
    iget-object v3, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3, v11, v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    goto :goto_1e5

    :cond_1e4
    const/4 v6, 0x3

    :goto_1e5
    add-int/lit8 v10, v10, 0x1

    move-object v6, v14

    const/4 v11, 0x3

    goto/16 :goto_dd

    .line 590
    :cond_1eb
    iget-object v3, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->biggest:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 591
    iget-object v9, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v9}, Landroid/support/constraint/solver/widgets/Flow;->access$800(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalChainStyle(I)V

    .line 592
    iget v9, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mPaddingLeft:I

    if-lez p2, :cond_201

    .line 594
    iget-object v10, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v10}, Landroid/support/constraint/solver/widgets/Flow;->access$000(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v10

    add-int/2addr v9, v10

    :cond_201
    if-eqz p1, :cond_223

    .line 597
    iget-object v10, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v10, v11, v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    if-eqz p3, :cond_215

    .line 599
    iget-object v9, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v11, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mPaddingRight:I

    invoke-virtual {v9, v10, v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    :cond_215
    if-lez p2, :cond_242

    .line 602
    iget-object v9, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 603
    iget-object v10, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v10, v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    goto :goto_242

    .line 606
    :cond_223
    iget-object v10, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v10, v11, v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    if-eqz p3, :cond_235

    .line 608
    iget-object v9, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v11, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mPaddingRight:I

    invoke-virtual {v9, v10, v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    :cond_235
    if-lez p2, :cond_242

    .line 611
    iget-object v9, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 612
    iget-object v10, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v10, v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    :cond_242
    :goto_242
    const/4 v9, 0x0

    :goto_243
    if-ge v9, v1, :cond_35c

    .line 616
    iget v10, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    add-int/2addr v10, v9

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v11}, Landroid/support/constraint/solver/widgets/Flow;->access$400(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v11

    if-lt v10, v11, :cond_252

    goto/16 :goto_35c

    .line 619
    :cond_252
    iget-object v10, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v10}, Landroid/support/constraint/solver/widgets/Flow;->access$500(Landroid/support/constraint/solver/widgets/Flow;)[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v10

    iget v11, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    add-int/2addr v11, v9

    aget-object v10, v10, v11

    if-nez v9, :cond_2a9

    .line 621
    iget-object v11, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v12, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v13, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mPaddingTop:I

    invoke-virtual {v10, v11, v12, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)V

    .line 622
    iget-object v11, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v11}, Landroid/support/constraint/solver/widgets/Flow;->access$600(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v11

    .line 623
    iget-object v12, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v12}, Landroid/support/constraint/solver/widgets/Flow;->access$1400(Landroid/support/constraint/solver/widgets/Flow;)F

    move-result v12

    .line 624
    iget v13, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    if-nez v13, :cond_28d

    iget-object v13, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v13}, Landroid/support/constraint/solver/widgets/Flow;->access$1500(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v13

    if-eq v13, v5, :cond_28d

    .line 625
    iget-object v11, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v11}, Landroid/support/constraint/solver/widgets/Flow;->access$1500(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v11

    .line 626
    iget-object v12, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v12}, Landroid/support/constraint/solver/widgets/Flow;->access$1600(Landroid/support/constraint/solver/widgets/Flow;)F

    move-result v12

    goto :goto_2a3

    :cond_28d
    if-eqz p3, :cond_2a3

    .line 627
    iget-object v13, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v13}, Landroid/support/constraint/solver/widgets/Flow;->access$1700(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v13

    if-eq v13, v5, :cond_2a3

    .line 628
    iget-object v11, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v11}, Landroid/support/constraint/solver/widgets/Flow;->access$1700(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v11

    .line 629
    iget-object v12, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v12}, Landroid/support/constraint/solver/widgets/Flow;->access$1800(Landroid/support/constraint/solver/widgets/Flow;)F

    move-result v12

    .line 631
    :cond_2a3
    :goto_2a3
    invoke-virtual {v10, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalChainStyle(I)V

    .line 632
    invoke-virtual {v10, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalBiasPercent(F)V

    :cond_2a9
    add-int/lit8 v11, v1, -0x1

    if-ne v9, v11, :cond_2b6

    .line 635
    iget-object v11, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v12, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v13, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mPaddingBottom:I

    invoke-virtual {v10, v11, v12, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)V

    :cond_2b6
    if-eqz v6, :cond_2e1

    .line 638
    iget-object v11, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v12, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v13, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v13}, Landroid/support/constraint/solver/widgets/Flow;->access$100(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    if-ne v9, v7, :cond_2ce

    .line 640
    iget-object v11, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v12, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mPaddingTop:I

    invoke-virtual {v11, v12}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->setGoneMargin(I)V

    .line 642
    :cond_2ce
    iget-object v11, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v12, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v11, v12, v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    const/4 v11, 0x1

    add-int/lit8 v12, v8, 0x1

    if-ne v9, v12, :cond_2e1

    .line 644
    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v11, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mPaddingBottom:I

    invoke-virtual {v6, v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->setGoneMargin(I)V

    :cond_2e1
    if-eq v10, v3, :cond_356

    const/4 v6, 0x2

    if-eqz p1, :cond_313

    .line 649
    iget-object v11, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v11}, Landroid/support/constraint/solver/widgets/Flow;->access$1900(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v11

    if-eqz v11, :cond_30b

    const/4 v12, 0x1

    if-eq v11, v12, :cond_303

    if-eq v11, v6, :cond_2f4

    goto :goto_356

    .line 655
    :cond_2f4
    iget-object v6, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6, v11, v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    .line 656
    iget-object v6, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6, v11, v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    goto :goto_356

    .line 660
    :cond_303
    iget-object v6, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6, v11, v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    goto :goto_356

    .line 651
    :cond_30b
    iget-object v6, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6, v11, v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    goto :goto_356

    .line 665
    :cond_313
    iget-object v11, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v11}, Landroid/support/constraint/solver/widgets/Flow;->access$1900(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v11

    if-eqz v11, :cond_34d

    const/4 v12, 0x1

    if-eq v11, v12, :cond_345

    if-eq v11, v6, :cond_321

    goto :goto_357

    :cond_321
    if-eqz v4, :cond_336

    .line 672
    iget-object v6, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v13, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mPaddingLeft:I

    invoke-virtual {v6, v11, v13}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    .line 673
    iget-object v6, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v13, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mPaddingRight:I

    invoke-virtual {v6, v11, v13}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    goto :goto_357

    .line 675
    :cond_336
    iget-object v6, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6, v11, v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    .line 676
    iget-object v6, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6, v11, v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    goto :goto_357

    .line 681
    :cond_345
    iget-object v6, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6, v11, v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    goto :goto_357

    :cond_34d
    const/4 v12, 0x1

    .line 667
    iget-object v6, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6, v11, v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    goto :goto_357

    :cond_356
    :goto_356
    const/4 v12, 0x1

    :goto_357
    add-int/lit8 v9, v9, 0x1

    move-object v6, v10

    goto/16 :goto_243

    :cond_35c
    :goto_35c
    return-void
.end method

.method public getHeight()I
    .registers 3

    .line 402
    iget v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 403
    iget v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mHeight:I

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v1}, Landroid/support/constraint/solver/widgets/Flow;->access$100(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    .line 405
    :cond_f
    iget v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .registers 3

    .line 395
    iget v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mOrientation:I

    if-nez v0, :cond_e

    .line 396
    iget v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mWidth:I

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v1}, Landroid/support/constraint/solver/widgets/Flow;->access$000(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    .line 398
    :cond_e
    iget v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mWidth:I

    return v0
.end method

.method public measureMatchConstraints(I)V
    .registers 10

    .line 693
    iget v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mNbMatchConstraintsWidgets:I

    if-nez v0, :cond_5

    return-void

    .line 696
    :cond_5
    iget v1, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mCount:I

    .line 697
    div-int/2addr p1, v0

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v1, :cond_66

    .line 699
    iget v2, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    add-int/2addr v2, v0

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v3}, Landroid/support/constraint/solver/widgets/Flow;->access$400(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v3

    if-lt v2, v3, :cond_17

    goto :goto_66

    .line 702
    :cond_17
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v2}, Landroid/support/constraint/solver/widgets/Flow;->access$500(Landroid/support/constraint/solver/widgets/Flow;)[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v2

    iget v3, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    add-int/2addr v3, v0

    aget-object v3, v2, v3

    .line 703
    iget v2, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mOrientation:I

    if-nez v2, :cond_45

    if-eqz v3, :cond_63

    .line 704
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v4, :cond_63

    .line 705
    iget v2, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v2, :cond_63

    .line 706
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v6

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v7

    move v5, p1

    invoke-virtual/range {v2 .. v7}, Landroid/support/constraint/solver/widgets/Flow;->measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    goto :goto_63

    :cond_45
    if-eqz v3, :cond_63

    .line 710
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v4, :cond_63

    .line 711
    iget v2, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v2, :cond_63

    .line 712
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v4

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move v7, p1

    invoke-virtual/range {v2 .. v7}, Landroid/support/constraint/solver/widgets/Flow;->measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    :cond_63
    :goto_63
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 717
    :cond_66
    :goto_66
    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->recomputeDimensions()V

    return-void
.end method

.method public setStartIndex(I)V
    .registers 2

    .line 392
    iput p1, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    return-void
.end method

.method public setup(ILandroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;IIIII)V
    .registers 11

    .line 370
    iput p1, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mOrientation:I

    .line 371
    iput-object p2, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 372
    iput-object p3, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 373
    iput-object p4, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 374
    iput-object p5, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 375
    iput p6, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mPaddingLeft:I

    .line 376
    iput p7, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mPaddingTop:I

    .line 377
    iput p8, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mPaddingRight:I

    .line 378
    iput p9, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mPaddingBottom:I

    .line 379
    iput p10, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mMax:I

    return-void
.end method
