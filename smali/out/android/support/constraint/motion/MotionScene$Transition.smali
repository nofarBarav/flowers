.class public Landroid/support/constraint/motion/MotionScene$Transition;
.super Ljava/lang/Object;
.source "MotionScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/motion/MotionScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Transition"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;
    }
.end annotation


# static fields
.field public static final AUTO_ANIMATE_TO_END:I = 0x4

.field public static final AUTO_ANIMATE_TO_START:I = 0x3

.field public static final AUTO_JUMP_TO_END:I = 0x2

.field public static final AUTO_JUMP_TO_START:I = 0x1

.field public static final AUTO_NONE:I = 0x0

.field static final TRANSITION_FLAG_FIRST_DRAW:I = 0x1


# instance fields
.field private mAutoTransition:I

.field private mConstraintSetEnd:I

.field private mConstraintSetStart:I

.field private mDefaultInterpolator:I

.field private mDefaultInterpolatorID:I

.field private mDefaultInterpolatorString:Ljava/lang/String;

.field private mDisable:Z

.field private mDuration:I

.field private mId:I

.field private mIsAbstract:Z

.field private mKeyFramesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/motion/KeyFrames;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutDuringTransition:I

.field private final mMotionScene:Landroid/support/constraint/motion/MotionScene;

.field private mOnClicks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;",
            ">;"
        }
    .end annotation
.end field

.field private mPathMotionArc:I

.field private mStagger:F

.field private mTouchResponse:Landroid/support/constraint/motion/TouchResponse;

.field private mTransitionFlags:I


# direct methods
.method public constructor <init>(ILandroid/support/constraint/motion/MotionScene;II)V
    .registers 9

    .line 767
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 432
    iput v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mId:I

    const/4 v1, 0x0

    .line 433
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mIsAbstract:Z

    .line 434
    iput v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mConstraintSetEnd:I

    .line 435
    iput v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mConstraintSetStart:I

    .line 436
    iput v1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDefaultInterpolator:I

    const/4 v2, 0x0

    .line 437
    iput-object v2, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDefaultInterpolatorString:Ljava/lang/String;

    .line 438
    iput v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDefaultInterpolatorID:I

    const/16 v3, 0x190

    .line 439
    iput v3, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDuration:I

    const/4 v3, 0x0

    .line 440
    iput v3, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mStagger:F

    .line 442
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mKeyFramesList:Ljava/util/ArrayList;

    .line 443
    iput-object v2, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mTouchResponse:Landroid/support/constraint/motion/TouchResponse;

    .line 444
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mOnClicks:Ljava/util/ArrayList;

    .line 445
    iput v1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mAutoTransition:I

    .line 451
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDisable:Z

    .line 452
    iput v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mPathMotionArc:I

    .line 453
    iput v1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mLayoutDuringTransition:I

    .line 454
    iput v1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mTransitionFlags:I

    .line 768
    iput p1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mId:I

    .line 769
    iput-object p2, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mMotionScene:Landroid/support/constraint/motion/MotionScene;

    .line 770
    iput p3, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mConstraintSetStart:I

    .line 771
    iput p4, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mConstraintSetEnd:I

    .line 772
    invoke-static {p2}, Landroid/support/constraint/motion/MotionScene;->access$900(Landroid/support/constraint/motion/MotionScene;)I

    move-result p1

    iput p1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDuration:I

    .line 773
    invoke-static {p2}, Landroid/support/constraint/motion/MotionScene;->access$1000(Landroid/support/constraint/motion/MotionScene;)I

    move-result p1

    iput p1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mLayoutDuringTransition:I

    return-void
.end method

.method constructor <init>(Landroid/support/constraint/motion/MotionScene;Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 8

    .line 776
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 432
    iput v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mId:I

    const/4 v1, 0x0

    .line 433
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mIsAbstract:Z

    .line 434
    iput v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mConstraintSetEnd:I

    .line 435
    iput v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mConstraintSetStart:I

    .line 436
    iput v1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDefaultInterpolator:I

    const/4 v2, 0x0

    .line 437
    iput-object v2, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDefaultInterpolatorString:Ljava/lang/String;

    .line 438
    iput v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDefaultInterpolatorID:I

    const/16 v3, 0x190

    .line 439
    iput v3, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDuration:I

    const/4 v3, 0x0

    .line 440
    iput v3, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mStagger:F

    .line 442
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mKeyFramesList:Ljava/util/ArrayList;

    .line 443
    iput-object v2, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mTouchResponse:Landroid/support/constraint/motion/TouchResponse;

    .line 444
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mOnClicks:Ljava/util/ArrayList;

    .line 445
    iput v1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mAutoTransition:I

    .line 451
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDisable:Z

    .line 452
    iput v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mPathMotionArc:I

    .line 453
    iput v1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mLayoutDuringTransition:I

    .line 454
    iput v1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mTransitionFlags:I

    .line 777
    invoke-static {p1}, Landroid/support/constraint/motion/MotionScene;->access$900(Landroid/support/constraint/motion/MotionScene;)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDuration:I

    .line 778
    invoke-static {p1}, Landroid/support/constraint/motion/MotionScene;->access$1000(Landroid/support/constraint/motion/MotionScene;)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mLayoutDuringTransition:I

    .line 779
    iput-object p1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mMotionScene:Landroid/support/constraint/motion/MotionScene;

    .line 780
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Landroid/support/constraint/motion/MotionScene$Transition;->fillFromAttributeList(Landroid/support/constraint/motion/MotionScene;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method constructor <init>(Landroid/support/constraint/motion/MotionScene;Landroid/support/constraint/motion/MotionScene$Transition;)V
    .registers 7

    .line 740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 432
    iput v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mId:I

    const/4 v1, 0x0

    .line 433
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mIsAbstract:Z

    .line 434
    iput v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mConstraintSetEnd:I

    .line 435
    iput v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mConstraintSetStart:I

    .line 436
    iput v1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDefaultInterpolator:I

    const/4 v2, 0x0

    .line 437
    iput-object v2, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDefaultInterpolatorString:Ljava/lang/String;

    .line 438
    iput v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDefaultInterpolatorID:I

    const/16 v3, 0x190

    .line 439
    iput v3, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDuration:I

    const/4 v3, 0x0

    .line 440
    iput v3, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mStagger:F

    .line 442
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mKeyFramesList:Ljava/util/ArrayList;

    .line 443
    iput-object v2, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mTouchResponse:Landroid/support/constraint/motion/TouchResponse;

    .line 444
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mOnClicks:Ljava/util/ArrayList;

    .line 445
    iput v1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mAutoTransition:I

    .line 451
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDisable:Z

    .line 452
    iput v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mPathMotionArc:I

    .line 453
    iput v1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mLayoutDuringTransition:I

    .line 454
    iput v1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mTransitionFlags:I

    .line 741
    iput-object p1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mMotionScene:Landroid/support/constraint/motion/MotionScene;

    if-eqz p2, :cond_59

    .line 743
    iget p1, p2, Landroid/support/constraint/motion/MotionScene$Transition;->mPathMotionArc:I

    iput p1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mPathMotionArc:I

    .line 744
    iget p1, p2, Landroid/support/constraint/motion/MotionScene$Transition;->mDefaultInterpolator:I

    iput p1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDefaultInterpolator:I

    .line 745
    iget-object p1, p2, Landroid/support/constraint/motion/MotionScene$Transition;->mDefaultInterpolatorString:Ljava/lang/String;

    iput-object p1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDefaultInterpolatorString:Ljava/lang/String;

    .line 746
    iget p1, p2, Landroid/support/constraint/motion/MotionScene$Transition;->mDefaultInterpolatorID:I

    iput p1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDefaultInterpolatorID:I

    .line 747
    iget p1, p2, Landroid/support/constraint/motion/MotionScene$Transition;->mDuration:I

    iput p1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDuration:I

    .line 748
    iget-object p1, p2, Landroid/support/constraint/motion/MotionScene$Transition;->mKeyFramesList:Ljava/util/ArrayList;

    iput-object p1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mKeyFramesList:Ljava/util/ArrayList;

    .line 749
    iget p1, p2, Landroid/support/constraint/motion/MotionScene$Transition;->mStagger:F

    iput p1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mStagger:F

    .line 750
    iget p1, p2, Landroid/support/constraint/motion/MotionScene$Transition;->mLayoutDuringTransition:I

    iput p1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mLayoutDuringTransition:I

    :cond_59
    return-void
.end method

.method static synthetic access$000(Landroid/support/constraint/motion/MotionScene$Transition;)I
    .registers 1

    .line 431
    iget p0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mConstraintSetEnd:I

    return p0
.end method

.method static synthetic access$002(Landroid/support/constraint/motion/MotionScene$Transition;I)I
    .registers 2

    .line 431
    iput p1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mConstraintSetEnd:I

    return p1
.end method

.method static synthetic access$100(Landroid/support/constraint/motion/MotionScene$Transition;)I
    .registers 1

    .line 431
    iget p0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mConstraintSetStart:I

    return p0
.end method

.method static synthetic access$102(Landroid/support/constraint/motion/MotionScene$Transition;I)I
    .registers 2

    .line 431
    iput p1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mConstraintSetStart:I

    return p1
.end method

.method static synthetic access$1200(Landroid/support/constraint/motion/MotionScene$Transition;)Z
    .registers 1

    .line 431
    iget-boolean p0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mIsAbstract:Z

    return p0
.end method

.method static synthetic access$1300(Landroid/support/constraint/motion/MotionScene$Transition;)Ljava/util/ArrayList;
    .registers 1

    .line 431
    iget-object p0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mKeyFramesList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1400(Landroid/support/constraint/motion/MotionScene$Transition;)I
    .registers 1

    .line 431
    iget p0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDefaultInterpolator:I

    return p0
.end method

.method static synthetic access$1500(Landroid/support/constraint/motion/MotionScene$Transition;)Ljava/lang/String;
    .registers 1

    .line 431
    iget-object p0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDefaultInterpolatorString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1600(Landroid/support/constraint/motion/MotionScene$Transition;)I
    .registers 1

    .line 431
    iget p0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDefaultInterpolatorID:I

    return p0
.end method

.method static synthetic access$1700(Landroid/support/constraint/motion/MotionScene$Transition;)I
    .registers 1

    .line 431
    iget p0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDuration:I

    return p0
.end method

.method static synthetic access$1800(Landroid/support/constraint/motion/MotionScene$Transition;)I
    .registers 1

    .line 431
    iget p0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mPathMotionArc:I

    return p0
.end method

.method static synthetic access$1900(Landroid/support/constraint/motion/MotionScene$Transition;)F
    .registers 1

    .line 431
    iget p0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mStagger:F

    return p0
.end method

.method static synthetic access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;
    .registers 1

    .line 431
    iget-object p0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mTouchResponse:Landroid/support/constraint/motion/TouchResponse;

    return-object p0
.end method

.method static synthetic access$202(Landroid/support/constraint/motion/MotionScene$Transition;Landroid/support/constraint/motion/TouchResponse;)Landroid/support/constraint/motion/TouchResponse;
    .registers 2

    .line 431
    iput-object p1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mTouchResponse:Landroid/support/constraint/motion/TouchResponse;

    return-object p1
.end method

.method static synthetic access$300(Landroid/support/constraint/motion/MotionScene$Transition;)I
    .registers 1

    .line 431
    iget p0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mId:I

    return p0
.end method

.method static synthetic access$400(Landroid/support/constraint/motion/MotionScene$Transition;)Ljava/util/ArrayList;
    .registers 1

    .line 431
    iget-object p0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mOnClicks:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$500(Landroid/support/constraint/motion/MotionScene$Transition;)Z
    .registers 1

    .line 431
    iget-boolean p0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDisable:Z

    return p0
.end method

.method static synthetic access$600(Landroid/support/constraint/motion/MotionScene$Transition;)I
    .registers 1

    .line 431
    iget p0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mAutoTransition:I

    return p0
.end method

.method static synthetic access$700(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/MotionScene;
    .registers 1

    .line 431
    iget-object p0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mMotionScene:Landroid/support/constraint/motion/MotionScene;

    return-object p0
.end method

.method private fill(Landroid/support/constraint/motion/MotionScene;Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .registers 13

    .line 790
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    const/4 v3, 0x1

    const/4 v4, -0x1

    if-ge v2, v0, :cond_11a

    .line 792
    invoke-virtual {p3, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    .line 793
    sget v6, Landroid/support/constraint/R$styleable;->Transition_constraintSetEnd:I

    const-string v7, "layout"

    if-ne v5, v6, :cond_41

    .line 794
    iget v3, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mConstraintSetEnd:I

    invoke-virtual {p3, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mConstraintSetEnd:I

    .line 795
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mConstraintSetEnd:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v3

    .line 796
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_116

    .line 797
    new-instance v3, Landroid/support/constraint/ConstraintSet;

    invoke-direct {v3}, Landroid/support/constraint/ConstraintSet;-><init>()V

    .line 798
    iget v4, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mConstraintSetEnd:I

    invoke-virtual {v3, p2, v4}, Landroid/support/constraint/ConstraintSet;->load(Landroid/content/Context;I)V

    .line 799
    invoke-static {p1}, Landroid/support/constraint/motion/MotionScene;->access$1100(Landroid/support/constraint/motion/MotionScene;)Landroid/util/SparseArray;

    move-result-object v4

    iget v5, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mConstraintSetEnd:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto/16 :goto_116

    .line 805
    :cond_41
    sget v6, Landroid/support/constraint/R$styleable;->Transition_constraintSetStart:I

    if-ne v5, v6, :cond_72

    .line 806
    iget v3, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mConstraintSetStart:I

    invoke-virtual {p3, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mConstraintSetStart:I

    .line 807
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mConstraintSetStart:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v3

    .line 808
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_116

    .line 809
    new-instance v3, Landroid/support/constraint/ConstraintSet;

    invoke-direct {v3}, Landroid/support/constraint/ConstraintSet;-><init>()V

    .line 810
    iget v4, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mConstraintSetStart:I

    invoke-virtual {v3, p2, v4}, Landroid/support/constraint/ConstraintSet;->load(Landroid/content/Context;I)V

    .line 811
    invoke-static {p1}, Landroid/support/constraint/motion/MotionScene;->access$1100(Landroid/support/constraint/motion/MotionScene;)Landroid/util/SparseArray;

    move-result-object v4

    iget v5, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mConstraintSetStart:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto/16 :goto_116

    .line 813
    :cond_72
    sget v6, Landroid/support/constraint/R$styleable;->Transition_motionInterpolator:I

    if-ne v5, v6, :cond_b5

    .line 814
    invoke-virtual {p3, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v6

    .line 816
    iget v7, v6, Landroid/util/TypedValue;->type:I

    const/4 v8, -0x2

    if-ne v7, v3, :cond_8b

    .line 817
    invoke-virtual {p3, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDefaultInterpolatorID:I

    if-eq v3, v4, :cond_116

    .line 819
    iput v8, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDefaultInterpolator:I

    goto/16 :goto_116

    .line 821
    :cond_8b
    iget v3, v6, Landroid/util/TypedValue;->type:I

    const/4 v6, 0x3

    if-ne v3, v6, :cond_ac

    .line 822
    invoke-virtual {p3, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDefaultInterpolatorString:Ljava/lang/String;

    const-string v6, "/"

    .line 823
    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_a8

    .line 824
    invoke-virtual {p3, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDefaultInterpolatorID:I

    .line 825
    iput v8, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDefaultInterpolator:I

    goto/16 :goto_116

    .line 827
    :cond_a8
    iput v4, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDefaultInterpolator:I

    goto/16 :goto_116

    .line 830
    :cond_ac
    iget v3, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDefaultInterpolator:I

    invoke-virtual {p3, v5, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDefaultInterpolator:I

    goto :goto_116

    .line 833
    :cond_b5
    sget v3, Landroid/support/constraint/R$styleable;->Transition_duration:I

    if-ne v5, v3, :cond_c2

    .line 834
    iget v3, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDuration:I

    invoke-virtual {p3, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDuration:I

    goto :goto_116

    .line 835
    :cond_c2
    sget v3, Landroid/support/constraint/R$styleable;->Transition_staggered:I

    if-ne v5, v3, :cond_cf

    .line 836
    iget v3, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mStagger:F

    invoke-virtual {p3, v5, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mStagger:F

    goto :goto_116

    .line 837
    :cond_cf
    sget v3, Landroid/support/constraint/R$styleable;->Transition_autoTransition:I

    if-ne v5, v3, :cond_dc

    .line 838
    iget v3, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mAutoTransition:I

    invoke-virtual {p3, v5, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mAutoTransition:I

    goto :goto_116

    .line 839
    :cond_dc
    sget v3, Landroid/support/constraint/R$styleable;->Transition_android_id:I

    if-ne v5, v3, :cond_e9

    .line 840
    iget v3, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mId:I

    invoke-virtual {p3, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mId:I

    goto :goto_116

    .line 841
    :cond_e9
    sget v3, Landroid/support/constraint/R$styleable;->Transition_transitionDisable:I

    if-ne v5, v3, :cond_f6

    .line 842
    iget-boolean v3, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDisable:Z

    invoke-virtual {p3, v5, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDisable:Z

    goto :goto_116

    .line 843
    :cond_f6
    sget v3, Landroid/support/constraint/R$styleable;->Transition_pathMotionArc:I

    if-ne v5, v3, :cond_101

    .line 844
    invoke-virtual {p3, v5, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mPathMotionArc:I

    goto :goto_116

    .line 845
    :cond_101
    sget v3, Landroid/support/constraint/R$styleable;->Transition_layoutDuringTransition:I

    if-ne v5, v3, :cond_10c

    .line 846
    invoke-virtual {p3, v5, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mLayoutDuringTransition:I

    goto :goto_116

    .line 847
    :cond_10c
    sget v3, Landroid/support/constraint/R$styleable;->Transition_transitionFlags:I

    if-ne v5, v3, :cond_116

    .line 848
    invoke-virtual {p3, v5, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mTransitionFlags:I

    :cond_116
    :goto_116
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    .line 851
    :cond_11a
    iget p1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mConstraintSetStart:I

    if-ne p1, v4, :cond_120

    .line 852
    iput-boolean v3, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mIsAbstract:Z

    :cond_120
    return-void
.end method

.method private fillFromAttributeList(Landroid/support/constraint/motion/MotionScene;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 784
    sget-object v0, Landroid/support/constraint/R$styleable;->Transition:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 785
    invoke-direct {p0, p1, p2, p3}, Landroid/support/constraint/motion/MotionScene$Transition;->fill(Landroid/support/constraint/motion/MotionScene;Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 786
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public addOnClick(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 5

    .line 462
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mOnClicks:Ljava/util/ArrayList;

    new-instance v1, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;

    invoke-direct {v1, p1, p0, p2}, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;-><init>(Landroid/content/Context;Landroid/support/constraint/motion/MotionScene$Transition;Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public debugString(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .line 598
    iget v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mConstraintSetStart:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    const-string v0, "null"

    goto :goto_12

    .line 601
    :cond_8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v2, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mConstraintSetStart:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 603
    :goto_12
    iget v2, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mConstraintSetEnd:I

    if-ne v2, v1, :cond_28

    .line 604
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -> null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_46

    .line 606
    :cond_28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mConstraintSetEnd:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_46
    return-object p1
.end method

.method public getDuration()I
    .registers 2

    .line 506
    iget v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDuration:I

    return v0
.end method

.method public getEndConstraintSetId()I
    .registers 2

    .line 479
    iget v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mConstraintSetEnd:I

    return v0
.end method

.method public getId()I
    .registers 2

    .line 470
    iget v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mId:I

    return v0
.end method

.method public getKeyFrameList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/constraint/motion/KeyFrames;",
            ">;"
        }
    .end annotation

    .line 519
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mKeyFramesList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLayoutDuringTransition()I
    .registers 2

    .line 458
    iget v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mLayoutDuringTransition:I

    return v0
.end method

.method public getOnClickList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;",
            ">;"
        }
    .end annotation

    .line 528
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mOnClicks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPathMotionArc()I
    .registers 2

    .line 568
    iget v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mPathMotionArc:I

    return v0
.end method

.method public getStagger()F
    .registers 2

    .line 515
    iget v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mStagger:F

    return v0
.end method

.method public getStartConstraintSetId()I
    .registers 2

    .line 488
    iget v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mConstraintSetStart:I

    return v0
.end method

.method public getTouchResponse()Landroid/support/constraint/motion/TouchResponse;
    .registers 2

    .line 537
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mTouchResponse:Landroid/support/constraint/motion/TouchResponse;

    return-object v0
.end method

.method public isEnabled()Z
    .registers 2

    .line 576
    iget-boolean v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDisable:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isTransitionFlag(I)Z
    .registers 3

    .line 612
    iget v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mTransitionFlags:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    return p1
.end method

.method public setDuration(I)V
    .registers 2

    .line 497
    iput p1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDuration:I

    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    xor-int/lit8 p1, p1, 0x1

    .line 586
    iput-boolean p1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDisable:Z

    return-void
.end method

.method public setPathMotionArc(I)V
    .registers 2

    .line 558
    iput p1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mPathMotionArc:I

    return-void
.end method

.method public setStagger(F)V
    .registers 2

    .line 548
    iput p1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mStagger:F

    return-void
.end method
