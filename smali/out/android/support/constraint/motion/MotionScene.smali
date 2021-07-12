.class public Landroid/support/constraint/motion/MotionScene;
.super Ljava/lang/Object;
.source "MotionScene.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/motion/MotionScene$Transition;
    }
.end annotation


# static fields
.field static final ANTICIPATE:I = 0x4

.field static final BOUNCE:I = 0x5

.field private static final DEBUG:Z = false

.field static final EASE_IN:I = 0x1

.field static final EASE_IN_OUT:I = 0x0

.field static final EASE_OUT:I = 0x2

.field private static final INTERPOLATOR_REFRENCE_ID:I = -0x2

.field public static final LAYOUT_HONOR_REQUEST:I = 0x1

.field public static final LAYOUT_IGNORE_REQUEST:I = 0x0

.field static final LINEAR:I = 0x3

.field private static final SPLINE_STRING:I = -0x1

.field public static final TAG:Ljava/lang/String; = "MotionScene"

.field static final TRANSITION_BACKWARD:I = 0x0

.field static final TRANSITION_FORWARD:I = 0x1

.field public static final UNSET:I = -0x1


# instance fields
.field private DEBUG_DESKTOP:Z

.field private mAbstractTransitionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/motion/MotionScene$Transition;",
            ">;"
        }
    .end annotation
.end field

.field private mConstraintSetIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mConstraintSetMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/support/constraint/ConstraintSet;",
            ">;"
        }
    .end annotation
.end field

.field mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

.field private mDefaultDuration:I

.field private mDefaultTransition:Landroid/support/constraint/motion/MotionScene$Transition;

.field private mDeriveMap:Landroid/util/SparseIntArray;

.field private mDisableAutoTransition:Z

.field private mLastTouchDown:Landroid/view/MotionEvent;

.field mLastTouchX:F

.field mLastTouchY:F

.field private mLayoutDuringTransition:I

.field private final mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

.field private mMotionOutsideRegion:Z

.field private mRtl:Z

.field mStateSet:Landroid/support/constraint/StateSet;

.field private mTransitionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/motion/MotionScene$Transition;",
            ">;"
        }
    .end annotation
.end field

.field private mVelocityTracker:Landroid/support/constraint/motion/MotionLayout$MotionTracker;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/support/constraint/motion/MotionLayout;I)V
    .registers 7

    .line 867
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mStateSet:Landroid/support/constraint/StateSet;

    .line 70
    iput-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    const/4 v1, 0x0

    .line 71
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionScene;->mDisableAutoTransition:Z

    .line 72
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/constraint/motion/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    .line 73
    iput-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mDefaultTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mAbstractTransitionList:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mConstraintSetIdMap:Ljava/util/HashMap;

    .line 78
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mDeriveMap:Landroid/util/SparseIntArray;

    .line 79
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionScene;->DEBUG_DESKTOP:Z

    const/16 v0, 0x190

    .line 80
    iput v0, p0, Landroid/support/constraint/motion/MotionScene;->mDefaultDuration:I

    .line 81
    iput v1, p0, Landroid/support/constraint/motion/MotionScene;->mLayoutDuringTransition:I

    .line 85
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionScene;->mMotionOutsideRegion:Z

    .line 868
    iput-object p2, p0, Landroid/support/constraint/motion/MotionScene;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    .line 869
    invoke-direct {p0, p1, p3}, Landroid/support/constraint/motion/MotionScene;->load(Landroid/content/Context;I)V

    .line 871
    iget-object p1, p0, Landroid/support/constraint/motion/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    sget p2, Landroid/support/constraint/R$id;->motion_base:I

    new-instance p3, Landroid/support/constraint/ConstraintSet;

    invoke-direct {p3}, Landroid/support/constraint/ConstraintSet;-><init>()V

    invoke-virtual {p1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 872
    iget-object p1, p0, Landroid/support/constraint/motion/MotionScene;->mConstraintSetIdMap:Ljava/util/HashMap;

    sget p2, Landroid/support/constraint/R$id;->motion_base:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "motion_base"

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/support/constraint/motion/MotionLayout;)V
    .registers 5

    .line 863
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mStateSet:Landroid/support/constraint/StateSet;

    .line 70
    iput-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    const/4 v1, 0x0

    .line 71
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionScene;->mDisableAutoTransition:Z

    .line 72
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/constraint/motion/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    .line 73
    iput-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mDefaultTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mAbstractTransitionList:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mConstraintSetIdMap:Ljava/util/HashMap;

    .line 78
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mDeriveMap:Landroid/util/SparseIntArray;

    .line 79
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionScene;->DEBUG_DESKTOP:Z

    const/16 v0, 0x190

    .line 80
    iput v0, p0, Landroid/support/constraint/motion/MotionScene;->mDefaultDuration:I

    .line 81
    iput v1, p0, Landroid/support/constraint/motion/MotionScene;->mLayoutDuringTransition:I

    .line 85
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionScene;->mMotionOutsideRegion:Z

    .line 864
    iput-object p1, p0, Landroid/support/constraint/motion/MotionScene;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    return-void
.end method

.method static synthetic access$1000(Landroid/support/constraint/motion/MotionScene;)I
    .registers 1

    .line 60
    iget p0, p0, Landroid/support/constraint/motion/MotionScene;->mLayoutDuringTransition:I

    return p0
.end method

.method static synthetic access$1100(Landroid/support/constraint/motion/MotionScene;)Landroid/util/SparseArray;
    .registers 1

    .line 60
    iget-object p0, p0, Landroid/support/constraint/motion/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$800(Landroid/support/constraint/motion/MotionScene;)Landroid/support/constraint/motion/MotionLayout;
    .registers 1

    .line 60
    iget-object p0, p0, Landroid/support/constraint/motion/MotionScene;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    return-object p0
.end method

.method static synthetic access$900(Landroid/support/constraint/motion/MotionScene;)I
    .registers 1

    .line 60
    iget p0, p0, Landroid/support/constraint/motion/MotionScene;->mDefaultDuration:I

    return p0
.end method

.method private getId(Landroid/content/Context;Ljava/lang/String;)I
    .registers 8

    const-string v0, "/"

    .line 983
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_3e

    const/16 v0, 0x2f

    .line 984
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 985
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v4, "id"

    invoke-virtual {v3, v0, v4, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 986
    iget-boolean v0, p0, Landroid/support/constraint/motion/MotionScene;->DEBUG_DESKTOP:Z

    if-eqz v0, :cond_3f

    .line 987
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id getMap res = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3f

    :cond_3e
    const/4 p1, -0x1

    :cond_3f
    :goto_3f
    if-ne p1, v1, :cond_59

    if-eqz p2, :cond_52

    .line 991
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_52

    .line 992
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_59

    :cond_52
    const-string p2, "MotionScene"

    const-string v0, "error in parsing id"

    .line 994
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_59
    :goto_59
    return p1
.end method

.method private getIndex(Landroid/support/constraint/motion/MotionScene$Transition;)I
    .registers 5

    .line 182
    invoke-static {p1}, Landroid/support/constraint/motion/MotionScene$Transition;->access$300(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_23

    const/4 v1, 0x0

    .line 188
    :goto_8
    iget-object v2, p0, Landroid/support/constraint/motion/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 189
    iget-object v2, p0, Landroid/support/constraint/motion/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {v2}, Landroid/support/constraint/motion/MotionScene$Transition;->access$300(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v2

    if-ne v2, p1, :cond_1f

    return v1

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_22
    return v0

    .line 184
    :cond_23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The transition must have an id"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2c

    :goto_2b
    throw p1

    :goto_2c
    goto :goto_2b
.end method

.method private getRealID(I)I
    .registers 4

    .line 219
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mStateSet:Landroid/support/constraint/StateSet;

    if-eqz v0, :cond_c

    const/4 v1, -0x1

    .line 220
    invoke-virtual {v0, p1, v1, v1}, Landroid/support/constraint/StateSet;->stateGetConstraintID(III)I

    move-result v0

    if-eq v0, v1, :cond_c

    return v0

    :cond_c
    return p1
.end method

.method private hasCycleDependency(I)Z
    .registers 6

    .line 1492
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mDeriveMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 1493
    iget-object v1, p0, Landroid/support/constraint/motion/MotionScene;->mDeriveMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    :goto_c
    if-lez v0, :cond_1f

    const/4 v2, 0x1

    if-ne v0, p1, :cond_12

    return v2

    :cond_12
    add-int/lit8 v3, v1, -0x1

    if-gez v1, :cond_17

    return v2

    .line 1501
    :cond_17
    iget-object v1, p0, Landroid/support/constraint/motion/MotionScene;->mDeriveMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    move v1, v3

    goto :goto_c

    :cond_1f
    const/4 p1, 0x0

    return p1
.end method

.method private isProcessingTouch()Z
    .registers 2

    .line 412
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mVelocityTracker:Landroid/support/constraint/motion/MotionLayout$MotionTracker;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private load(Landroid/content/Context;I)V
    .registers 11

    .line 883
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 884
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    const/4 v1, 0x0

    .line 889
    :try_start_9
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    :goto_d
    const/4 v3, 0x1

    if-eq v2, v3, :cond_151

    if-eqz v2, :cond_13f

    const/4 v4, 0x2

    if-eq v2, v4, :cond_17

    goto/16 :goto_142

    .line 897
    :cond_17
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 898
    iget-boolean v5, p0, Landroid/support/constraint/motion/MotionScene;->DEBUG_DESKTOP:Z

    if-eqz v5, :cond_35

    .line 899
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parsing = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 904
    :cond_35
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5
    :try_end_39
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_39} :catch_14d
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_39} :catch_148

    const/4 v6, -0x1

    const-string v7, "MotionScene"

    sparse-switch v5, :sswitch_data_152

    goto :goto_83

    :sswitch_40
    :try_start_40
    const-string v3, "StateSet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_83

    const/4 v3, 0x4

    goto :goto_84

    :sswitch_4a
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_83

    const/4 v3, 0x0

    goto :goto_84

    :sswitch_52
    const-string v3, "OnSwipe"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_83

    const/4 v3, 0x2

    goto :goto_84

    :sswitch_5c
    const-string v3, "OnClick"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_83

    const/4 v3, 0x3

    goto :goto_84

    :sswitch_66
    const-string v4, "Transition"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_83

    goto :goto_84

    :sswitch_6f
    const-string v3, "KeyFrameSet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_83

    const/4 v3, 0x6

    goto :goto_84

    :sswitch_79
    const-string v3, "ConstraintSet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_83

    const/4 v3, 0x5

    goto :goto_84

    :cond_83
    :goto_83
    const/4 v3, -0x1

    :goto_84
    packed-switch v3, :pswitch_data_170

    goto/16 :goto_12a

    .line 943
    :pswitch_89
    new-instance v2, Landroid/support/constraint/motion/KeyFrames;

    invoke-direct {v2, p1, v0}, Landroid/support/constraint/motion/KeyFrames;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 944
    invoke-static {v1}, Landroid/support/constraint/motion/MotionScene$Transition;->access$1300(Landroid/support/constraint/motion/MotionScene$Transition;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_142

    .line 940
    :pswitch_97
    invoke-direct {p0, p1, v0}, Landroid/support/constraint/motion/MotionScene;->parseConstraintSet(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_142

    .line 937
    :pswitch_9c
    new-instance v2, Landroid/support/constraint/StateSet;

    invoke-direct {v2, p1, v0}, Landroid/support/constraint/StateSet;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v2, p0, Landroid/support/constraint/motion/MotionScene;->mStateSet:Landroid/support/constraint/StateSet;

    goto/16 :goto_142

    .line 934
    :pswitch_a5
    invoke-virtual {v1, p1, v0}, Landroid/support/constraint/motion/MotionScene$Transition;->addOnClick(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_142

    :pswitch_aa
    if-nez v1, :cond_d9

    .line 927
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    .line 928
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v3

    .line 929
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " OnSwipe ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".xml:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    :cond_d9
    new-instance v2, Landroid/support/constraint/motion/TouchResponse;

    iget-object v3, p0, Landroid/support/constraint/motion/MotionScene;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-direct {v2, p1, v3, v0}, Landroid/support/constraint/motion/TouchResponse;-><init>(Landroid/content/Context;Landroid/support/constraint/motion/MotionLayout;Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-static {v1, v2}, Landroid/support/constraint/motion/MotionScene$Transition;->access$202(Landroid/support/constraint/motion/MotionScene$Transition;Landroid/support/constraint/motion/TouchResponse;)Landroid/support/constraint/motion/TouchResponse;

    goto :goto_142

    .line 909
    :pswitch_e4
    iget-object v1, p0, Landroid/support/constraint/motion/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    new-instance v2, Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-direct {v2, p0, p1, v0}, Landroid/support/constraint/motion/MotionScene$Transition;-><init>(Landroid/support/constraint/motion/MotionScene;Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 910
    iget-object v1, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-nez v1, :cond_10b

    invoke-static {v2}, Landroid/support/constraint/motion/MotionScene$Transition;->access$1200(Landroid/support/constraint/motion/MotionScene$Transition;)Z

    move-result v1

    if-nez v1, :cond_10b

    .line 911
    iput-object v2, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    .line 912
    invoke-static {v2}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object v1

    if-eqz v1, :cond_10b

    .line 913
    iget-object v1, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {v1}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object v1

    iget-boolean v3, p0, Landroid/support/constraint/motion/MotionScene;->mRtl:Z

    invoke-virtual {v1, v3}, Landroid/support/constraint/motion/TouchResponse;->setRTL(Z)V

    .line 916
    :cond_10b
    invoke-static {v2}, Landroid/support/constraint/motion/MotionScene$Transition;->access$1200(Landroid/support/constraint/motion/MotionScene$Transition;)Z

    move-result v1

    if-eqz v1, :cond_124

    .line 917
    invoke-static {v2}, Landroid/support/constraint/motion/MotionScene$Transition;->access$000(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v1

    if-ne v1, v6, :cond_11a

    .line 918
    iput-object v2, p0, Landroid/support/constraint/motion/MotionScene;->mDefaultTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    goto :goto_11f

    .line 920
    :cond_11a
    iget-object v1, p0, Landroid/support/constraint/motion/MotionScene;->mAbstractTransitionList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 922
    :goto_11f
    iget-object v1, p0, Landroid/support/constraint/motion/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_124
    move-object v1, v2

    goto :goto_142

    .line 906
    :pswitch_126
    invoke-direct {p0, p1, v0}, Landroid/support/constraint/motion/MotionScene;->parseMotionSceneTags(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_142

    .line 947
    :goto_12a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WARNING UNKNOWN ATTRIBUTE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_142

    .line 894
    :cond_13f
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 891
    :goto_142
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2
    :try_end_146
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_40 .. :try_end_146} :catch_14d
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_146} :catch_148

    goto/16 :goto_d

    :catch_148
    move-exception p1

    .line 962
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_151

    :catch_14d
    move-exception p1

    .line 960
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :cond_151
    :goto_151
    return-void

    :sswitch_data_152
    .sparse-switch
        -0x50764adb -> :sswitch_79
        -0x49df9cec -> :sswitch_6f
        0x100d4975 -> :sswitch_66
        0x12a432c9 -> :sswitch_5c
        0x138aac7b -> :sswitch_52
        0x2f487256 -> :sswitch_4a
        0x526c4e31 -> :sswitch_40
    .end sparse-switch

    :pswitch_data_170
    .packed-switch 0x0
        :pswitch_126
        :pswitch_e4
        :pswitch_aa
        :pswitch_a5
        :pswitch_9c
        :pswitch_97
        :pswitch_89
    .end packed-switch
.end method

.method private parseConstraintSet(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 14

    .line 1001
    new-instance v0, Landroid/support/constraint/ConstraintSet;

    invoke-direct {v0}, Landroid/support/constraint/ConstraintSet;-><init>()V

    const/4 v1, 0x0

    .line 1002
    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintSet;->setForceId(Z)V

    .line 1003
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    :goto_10
    if-ge v1, v2, :cond_61

    .line 1007
    invoke-interface {p2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    .line 1008
    invoke-interface {p2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    .line 1009
    iget-boolean v8, p0, Landroid/support/constraint/motion/MotionScene;->DEBUG_DESKTOP:Z

    if-eqz v8, :cond_34

    .line 1010
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "id string = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1012
    :cond_34
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    const-string v8, "deriveConstraintsFrom"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5a

    const-string v8, "id"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_48

    goto :goto_5e

    .line 1014
    :cond_48
    invoke-direct {p0, p1, v7}, Landroid/support/constraint/motion/MotionScene;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 1015
    iget-object v6, p0, Landroid/support/constraint/motion/MotionScene;->mConstraintSetIdMap:Ljava/util/HashMap;

    invoke-static {v7}, Landroid/support/constraint/motion/MotionScene;->stripID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5e

    .line 1018
    :cond_5a
    invoke-direct {p0, p1, v7}, Landroid/support/constraint/motion/MotionScene;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    :goto_5e
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_61
    if-eq v4, v3, :cond_7c

    .line 1023
    iget-object v1, p0, Landroid/support/constraint/motion/MotionScene;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget v1, v1, Landroid/support/constraint/motion/MotionLayout;->mDebugPath:I

    if-eqz v1, :cond_6d

    const/4 v1, 0x1

    .line 1024
    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintSet;->setValidateOnParse(Z)V

    .line 1026
    :cond_6d
    invoke-virtual {v0, p1, p2}, Landroid/support/constraint/ConstraintSet;->load(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    if-eq v5, v3, :cond_77

    .line 1028
    iget-object p1, p0, Landroid/support/constraint/motion/MotionScene;->mDeriveMap:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1030
    :cond_77
    iget-object p1, p0, Landroid/support/constraint/motion/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    invoke-virtual {p1, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_7c
    return-void
.end method

.method private parseMotionSceneTags(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 7

    .line 967
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    .line 968
    sget-object v0, Landroid/support/constraint/R$styleable;->MotionScene:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 969
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_10
    if-ge v1, p2, :cond_30

    .line 971
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 972
    sget v3, Landroid/support/constraint/R$styleable;->MotionScene_defaultDuration:I

    if-ne v2, v3, :cond_23

    .line 973
    iget v3, p0, Landroid/support/constraint/motion/MotionScene;->mDefaultDuration:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/support/constraint/motion/MotionScene;->mDefaultDuration:I

    goto :goto_2d

    .line 974
    :cond_23
    sget v3, Landroid/support/constraint/R$styleable;->MotionScene_layoutDuringTransition:I

    if-ne v2, v3, :cond_2d

    .line 975
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Landroid/support/constraint/motion/MotionScene;->mLayoutDuringTransition:I

    :cond_2d
    :goto_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 978
    :cond_30
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private readConstraintChain(I)V
    .registers 5

    .line 1510
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mDeriveMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-lez v0, :cond_4d

    .line 1512
    iget-object v1, p0, Landroid/support/constraint/motion/MotionScene;->mDeriveMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/support/constraint/motion/MotionScene;->readConstraintChain(I)V

    .line 1513
    iget-object v1, p0, Landroid/support/constraint/motion/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/ConstraintSet;

    .line 1514
    iget-object v2, p0, Landroid/support/constraint/motion/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/ConstraintSet;

    if-nez v2, :cond_44

    .line 1516
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERROR! invalid deriveConstraintsFrom: @id/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/constraint/motion/MotionScene;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    .line 1517
    invoke-virtual {v1}, Landroid/support/constraint/motion/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/support/constraint/motion/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MotionScene"

    .line 1516
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1520
    :cond_44
    invoke-virtual {v1, v2}, Landroid/support/constraint/ConstraintSet;->readFallback(Landroid/support/constraint/ConstraintSet;)V

    .line 1521
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mDeriveMap:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    :cond_4d
    return-void
.end method

.method public static stripID(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    :cond_5
    const/16 v0, 0x2f

    .line 1530
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_e

    return-object p0

    :cond_e
    add-int/lit8 v0, v0, 0x1

    .line 1534
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addOnClickListeners(Landroid/support/constraint/motion/MotionLayout;I)V
    .registers 7

    .line 242
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/motion/MotionScene$Transition;

    .line 243
    invoke-static {v1}, Landroid/support/constraint/motion/MotionScene$Transition;->access$400(Landroid/support/constraint/motion/MotionScene$Transition;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 244
    invoke-static {v1}, Landroid/support/constraint/motion/MotionScene$Transition;->access$400(Landroid/support/constraint/motion/MotionScene$Transition;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;

    .line 245
    invoke-virtual {v2, p1}, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->removeOnClickListeners(Landroid/support/constraint/motion/MotionLayout;)V

    goto :goto_24

    .line 249
    :cond_34
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mAbstractTransitionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_68

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/motion/MotionScene$Transition;

    .line 250
    invoke-static {v1}, Landroid/support/constraint/motion/MotionScene$Transition;->access$400(Landroid/support/constraint/motion/MotionScene$Transition;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3a

    .line 251
    invoke-static {v1}, Landroid/support/constraint/motion/MotionScene$Transition;->access$400(Landroid/support/constraint/motion/MotionScene$Transition;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_58
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;

    .line 252
    invoke-virtual {v2, p1}, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->removeOnClickListeners(Landroid/support/constraint/motion/MotionLayout;)V

    goto :goto_58

    .line 257
    :cond_68
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/motion/MotionScene$Transition;

    .line 258
    invoke-static {v1}, Landroid/support/constraint/motion/MotionScene$Transition;->access$400(Landroid/support/constraint/motion/MotionScene$Transition;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6e

    .line 259
    invoke-static {v1}, Landroid/support/constraint/motion/MotionScene$Transition;->access$400(Landroid/support/constraint/motion/MotionScene$Transition;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;

    .line 260
    invoke-virtual {v3, p1, p2, v1}, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->addOnClickListeners(Landroid/support/constraint/motion/MotionLayout;ILandroid/support/constraint/motion/MotionScene$Transition;)V

    goto :goto_8c

    .line 264
    :cond_9c
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mAbstractTransitionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/motion/MotionScene$Transition;

    .line 265
    invoke-static {v1}, Landroid/support/constraint/motion/MotionScene$Transition;->access$400(Landroid/support/constraint/motion/MotionScene$Transition;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_a2

    .line 266
    invoke-static {v1}, Landroid/support/constraint/motion/MotionScene$Transition;->access$400(Landroid/support/constraint/motion/MotionScene$Transition;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;

    .line 267
    invoke-virtual {v3, p1, p2, v1}, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->addOnClickListeners(Landroid/support/constraint/motion/MotionLayout;ILandroid/support/constraint/motion/MotionScene$Transition;)V

    goto :goto_c0

    :cond_d0
    return-void
.end method

.method public addTransition(Landroid/support/constraint/motion/MotionScene$Transition;)V
    .registers 4

    .line 157
    invoke-direct {p0, p1}, Landroid/support/constraint/motion/MotionScene;->getIndex(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    .line 159
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 161
    :cond_d
    iget-object v1, p0, Landroid/support/constraint/motion/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_12
    return-void
.end method

.method autoTransition(Landroid/support/constraint/motion/MotionLayout;I)Z
    .registers 10

    .line 356
    invoke-direct {p0}, Landroid/support/constraint/motion/MotionScene;->isProcessingTouch()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 359
    :cond_8
    iget-boolean v0, p0, Landroid/support/constraint/motion/MotionScene;->mDisableAutoTransition:Z

    if-eqz v0, :cond_d

    return v1

    .line 363
    :cond_d
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/motion/MotionScene$Transition;

    .line 364
    invoke-static {v2}, Landroid/support/constraint/motion/MotionScene$Transition;->access$600(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v3

    if-nez v3, :cond_26

    goto :goto_13

    .line 367
    :cond_26
    invoke-static {v2}, Landroid/support/constraint/motion/MotionScene$Transition;->access$100(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v3

    const/4 v4, 0x1

    if-ne p2, v3, :cond_6f

    .line 368
    invoke-static {v2}, Landroid/support/constraint/motion/MotionScene$Transition;->access$600(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v3

    const/4 v5, 0x4

    if-eq v3, v5, :cond_3b

    .line 369
    invoke-static {v2}, Landroid/support/constraint/motion/MotionScene$Transition;->access$600(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v3

    const/4 v6, 0x2

    if-ne v3, v6, :cond_6f

    .line 370
    :cond_3b
    sget-object p2, Landroid/support/constraint/motion/MotionLayout$TransitionState;->FINISHED:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {p1, p2}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    .line 371
    invoke-virtual {p1, v2}, Landroid/support/constraint/motion/MotionLayout;->setTransition(Landroid/support/constraint/motion/MotionScene$Transition;)V

    .line 372
    invoke-static {v2}, Landroid/support/constraint/motion/MotionScene$Transition;->access$600(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result p2

    if-ne p2, v5, :cond_57

    .line 373
    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionLayout;->transitionToEnd()V

    .line 374
    sget-object p2, Landroid/support/constraint/motion/MotionLayout$TransitionState;->SETUP:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {p1, p2}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    .line 375
    sget-object p2, Landroid/support/constraint/motion/MotionLayout$TransitionState;->MOVING:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {p1, p2}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    goto :goto_6e

    :cond_57
    const/high16 p2, 0x3f800000    # 1.0f

    .line 378
    invoke-virtual {p1, p2}, Landroid/support/constraint/motion/MotionLayout;->setProgress(F)V

    .line 379
    invoke-virtual {p1, v4}, Landroid/support/constraint/motion/MotionLayout;->evaluate(Z)V

    .line 380
    sget-object p2, Landroid/support/constraint/motion/MotionLayout$TransitionState;->SETUP:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {p1, p2}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    .line 381
    sget-object p2, Landroid/support/constraint/motion/MotionLayout$TransitionState;->MOVING:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {p1, p2}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    .line 383
    sget-object p2, Landroid/support/constraint/motion/MotionLayout$TransitionState;->FINISHED:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {p1, p2}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    :goto_6e
    return v4

    .line 388
    :cond_6f
    invoke-static {v2}, Landroid/support/constraint/motion/MotionScene$Transition;->access$000(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v3

    if-ne p2, v3, :cond_13

    .line 389
    invoke-static {v2}, Landroid/support/constraint/motion/MotionScene$Transition;->access$600(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v3

    const/4 v5, 0x3

    if-eq v3, v5, :cond_82

    .line 390
    invoke-static {v2}, Landroid/support/constraint/motion/MotionScene$Transition;->access$600(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v3

    if-ne v3, v4, :cond_13

    .line 391
    :cond_82
    sget-object p2, Landroid/support/constraint/motion/MotionLayout$TransitionState;->FINISHED:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {p1, p2}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    .line 392
    invoke-virtual {p1, v2}, Landroid/support/constraint/motion/MotionLayout;->setTransition(Landroid/support/constraint/motion/MotionScene$Transition;)V

    .line 393
    invoke-static {v2}, Landroid/support/constraint/motion/MotionScene$Transition;->access$600(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result p2

    if-ne p2, v5, :cond_9e

    .line 394
    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionLayout;->transitionToStart()V

    .line 395
    sget-object p2, Landroid/support/constraint/motion/MotionLayout$TransitionState;->SETUP:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {p1, p2}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    .line 396
    sget-object p2, Landroid/support/constraint/motion/MotionLayout$TransitionState;->MOVING:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {p1, p2}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    goto :goto_b4

    :cond_9e
    const/4 p2, 0x0

    .line 399
    invoke-virtual {p1, p2}, Landroid/support/constraint/motion/MotionLayout;->setProgress(F)V

    .line 400
    invoke-virtual {p1, v4}, Landroid/support/constraint/motion/MotionLayout;->evaluate(Z)V

    .line 401
    sget-object p2, Landroid/support/constraint/motion/MotionLayout$TransitionState;->SETUP:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {p1, p2}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    .line 402
    sget-object p2, Landroid/support/constraint/motion/MotionLayout$TransitionState;->MOVING:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {p1, p2}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    .line 403
    sget-object p2, Landroid/support/constraint/motion/MotionLayout$TransitionState;->FINISHED:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {p1, p2}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    :goto_b4
    return v4

    :cond_b5
    return v1
.end method

.method public bestTransitionFor(IFFLandroid/view/MotionEvent;)Landroid/support/constraint/motion/MotionScene$Transition;
    .registers 13

    const/4 v0, -0x1

    if-eq p1, v0, :cond_8c

    .line 276
    invoke-virtual {p0, p1}, Landroid/support/constraint/motion/MotionScene;->getTransitionsWithState(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 279
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 280
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/motion/MotionScene$Transition;

    .line 281
    invoke-static {v4}, Landroid/support/constraint/motion/MotionScene$Transition;->access$500(Landroid/support/constraint/motion/MotionScene$Transition;)Z

    move-result v5

    if-eqz v5, :cond_25

    goto :goto_12

    .line 284
    :cond_25
    invoke-static {v4}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object v5

    if-eqz v5, :cond_12

    .line 285
    invoke-static {v4}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object v5

    iget-boolean v6, p0, Landroid/support/constraint/motion/MotionScene;->mRtl:Z

    invoke-virtual {v5, v6}, Landroid/support/constraint/motion/TouchResponse;->setRTL(Z)V

    .line 286
    invoke-static {v4}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object v5

    iget-object v6, p0, Landroid/support/constraint/motion/MotionScene;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v5, v6, v3}, Landroid/support/constraint/motion/TouchResponse;->getTouchRegion(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v5

    if-eqz v5, :cond_51

    if-eqz p4, :cond_51

    .line 287
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-nez v5, :cond_51

    goto :goto_12

    .line 290
    :cond_51
    invoke-static {v4}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object v5

    iget-object v6, p0, Landroid/support/constraint/motion/MotionScene;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v5, v6, v3}, Landroid/support/constraint/motion/TouchResponse;->getTouchRegion(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v5

    if-eqz v5, :cond_6e

    if-eqz p4, :cond_6e

    .line 291
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-nez v5, :cond_6e

    goto :goto_12

    .line 295
    :cond_6e
    invoke-static {v4}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Landroid/support/constraint/motion/TouchResponse;->dot(FF)F

    move-result v5

    .line 300
    invoke-static {v4}, Landroid/support/constraint/motion/MotionScene$Transition;->access$000(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v6

    if-ne v6, p1, :cond_7f

    const/high16 v6, -0x40800000    # -1.0f

    goto :goto_82

    :cond_7f
    const v6, 0x3f8ccccd    # 1.1f

    :goto_82
    mul-float v5, v5, v6

    cmpl-float v6, v5, v1

    if-lez v6, :cond_12

    move-object v2, v4

    move v1, v5

    goto :goto_12

    :cond_8b
    return-object v2

    .line 322
    :cond_8c
    iget-object p1, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    return-object p1
.end method

.method public disableAutoTransition(Z)V
    .registers 2

    .line 1567
    iput-boolean p1, p0, Landroid/support/constraint/motion/MotionScene;->mDisableAutoTransition:Z

    return-void
.end method

.method public gatPathMotionArc()I
    .registers 2

    .line 1419
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-eqz v0, :cond_9

    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$1800(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, -0x1

    :goto_a
    return v0
.end method

.method getConstraintSet(I)Landroid/support/constraint/ConstraintSet;
    .registers 3

    const/4 v0, -0x1

    .line 1057
    invoke-virtual {p0, p1, v0, v0}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(III)Landroid/support/constraint/ConstraintSet;

    move-result-object p1

    return-object p1
.end method

.method getConstraintSet(III)Landroid/support/constraint/ConstraintSet;
    .registers 7

    .line 1061
    iget-boolean v0, p0, Landroid/support/constraint/motion/MotionScene;->DEBUG_DESKTOP:Z

    if-eqz v0, :cond_36

    .line 1062
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1063
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/constraint/motion/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1065
    :cond_36
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mStateSet:Landroid/support/constraint/StateSet;

    if-eqz v0, :cond_42

    .line 1066
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/constraint/StateSet;->stateGetConstraintID(III)I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_42

    move p1, p2

    .line 1071
    :cond_42
    iget-object p2, p0, Landroid/support/constraint/motion/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_7d

    .line 1072
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Warning could not find ConstraintSet id/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Landroid/support/constraint/motion/MotionScene;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {p3}, Landroid/support/constraint/motion/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p1}, Landroid/support/constraint/motion/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " In MotionScene"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MotionScene"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    iget-object p1, p0, Landroid/support/constraint/motion/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/constraint/ConstraintSet;

    return-object p1

    .line 1075
    :cond_7d
    iget-object p2, p0, Landroid/support/constraint/motion/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/constraint/ConstraintSet;

    return-object p1
.end method

.method public getConstraintSet(Landroid/content/Context;Ljava/lang/String;)Landroid/support/constraint/ConstraintSet;
    .registers 9

    .line 1039
    iget-boolean v0, p0, Landroid/support/constraint/motion/MotionScene;->DEBUG_DESKTOP:Z

    if-eqz v0, :cond_36

    .line 1040
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1041
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/constraint/motion/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_36
    const/4 v0, 0x0

    .line 1043
    :goto_37
    iget-object v1, p0, Landroid/support/constraint/motion/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_8e

    .line 1044
    iget-object v1, p0, Landroid/support/constraint/motion/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1045
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 1046
    iget-boolean v3, p0, Landroid/support/constraint/motion/MotionScene;->DEBUG_DESKTOP:Z

    if-eqz v3, :cond_7c

    .line 1047
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Id for <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "> is <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "> looking for <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1049
    :cond_7c
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 1050
    iget-object p1, p0, Landroid/support/constraint/motion/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/constraint/ConstraintSet;

    return-object p1

    :cond_8b
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    :cond_8e
    const/4 p1, 0x0

    return-object p1
.end method

.method public getConstraintSetIds()[I
    .registers 5

    .line 339
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_16

    .line 341
    iget-object v3, p0, Landroid/support/constraint/motion/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_16
    return-object v1
.end method

.method public getDefinedTransitions()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/motion/MotionScene$Transition;",
            ">;"
        }
    .end annotation

    .line 326
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDuration()I
    .registers 2

    .line 1399
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-eqz v0, :cond_9

    .line 1400
    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$1700(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v0

    return v0

    .line 1402
    :cond_9
    iget v0, p0, Landroid/support/constraint/motion/MotionScene;->mDefaultDuration:I

    return v0
.end method

.method getEndId()I
    .registers 2

    .line 1351
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    return v0

    .line 1354
    :cond_6
    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$000(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v0

    return v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .registers 3

    .line 1365
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$1400(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_4a

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3a

    if-eqz v0, :cond_34

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_28

    const/4 v1, 0x4

    if-eq v0, v1, :cond_22

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1c

    const/4 v0, 0x0

    return-object v0

    .line 1388
    :cond_1c
    new-instance v0, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v0}, Landroid/view/animation/BounceInterpolator;-><init>()V

    return-object v0

    .line 1386
    :cond_22
    new-instance v0, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    return-object v0

    .line 1382
    :cond_28
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    return-object v0

    .line 1380
    :cond_2e
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    return-object v0

    .line 1378
    :cond_34
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    return-object v0

    .line 1367
    :cond_3a
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$1500(Landroid/support/constraint/motion/MotionScene$Transition;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/constraint/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroid/support/constraint/motion/utils/Easing;

    move-result-object v0

    .line 1368
    new-instance v1, Landroid/support/constraint/motion/MotionScene$1;

    invoke-direct {v1, p0, v0}, Landroid/support/constraint/motion/MotionScene$1;-><init>(Landroid/support/constraint/motion/MotionScene;Landroid/support/constraint/motion/utils/Easing;)V

    return-object v1

    .line 1375
    :cond_4a
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    .line 1376
    invoke-static {v1}, Landroid/support/constraint/motion/MotionScene$Transition;->access$1600(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v1

    .line 1375
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0
.end method

.method getKeyFrame(Landroid/content/Context;III)Landroid/support/constraint/motion/Key;
    .registers 11

    .line 1117
    iget-object p1, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    const/4 v0, 0x0

    if-nez p1, :cond_6

    return-object v0

    .line 1120
    :cond_6
    invoke-static {p1}, Landroid/support/constraint/motion/MotionScene$Transition;->access$1300(Landroid/support/constraint/motion/MotionScene$Transition;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/motion/KeyFrames;

    .line 1121
    invoke-virtual {v1}, Landroid/support/constraint/motion/KeyFrames;->getKeys()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1122
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne p3, v4, :cond_22

    .line 1123
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/support/constraint/motion/KeyFrames;->getKeyFramesForView(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 1124
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/motion/Key;

    .line 1125
    iget v5, v4, Landroid/support/constraint/motion/Key;->mFramePosition:I

    if-ne v5, p4, :cond_40

    .line 1126
    iget v5, v4, Landroid/support/constraint/motion/Key;->mType:I

    if-ne v5, p2, :cond_40

    return-object v4

    :cond_55
    return-object v0
.end method

.method public getKeyFrames(Landroid/support/constraint/motion/MotionController;)V
    .registers 4

    .line 1094
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-nez v0, :cond_21

    .line 1095
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mDefaultTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-eqz v0, :cond_20

    .line 1096
    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$1300(Landroid/support/constraint/motion/MotionScene$Transition;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/motion/KeyFrames;

    .line 1097
    invoke-virtual {v1, p1}, Landroid/support/constraint/motion/KeyFrames;->addFrames(Landroid/support/constraint/motion/MotionController;)V

    goto :goto_10

    :cond_20
    return-void

    .line 1102
    :cond_21
    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$1300(Landroid/support/constraint/motion/MotionScene$Transition;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/motion/KeyFrames;

    .line 1103
    invoke-virtual {v1, p1}, Landroid/support/constraint/motion/KeyFrames;->addFrames(Landroid/support/constraint/motion/MotionController;)V

    goto :goto_29

    :cond_39
    return-void
.end method

.method getMaxAcceleration()F
    .registers 2

    .line 1436
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-eqz v0, :cond_15

    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 1437
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/constraint/motion/TouchResponse;->getMaxAcceleration()F

    move-result v0

    return v0

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method getMaxVelocity()F
    .registers 2

    .line 1443
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-eqz v0, :cond_15

    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 1444
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/constraint/motion/TouchResponse;->getMaxVelocity()F

    move-result v0

    return v0

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method getMoveWhenScrollAtTop()Z
    .registers 2

    .line 1456
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-eqz v0, :cond_15

    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 1457
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/constraint/motion/TouchResponse;->getMoveWhenScrollAtTop()Z

    move-result v0

    return v0

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public getPathPercent(Landroid/view/View;I)F
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method getProgressDirection(FF)F
    .registers 4

    .line 1335
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-eqz v0, :cond_15

    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 1336
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/constraint/motion/TouchResponse;->getProgressDirection(FF)F

    move-result p1

    return p1

    :cond_15
    const/4 p1, 0x0

    return p1
.end method

.method public getStaggered()F
    .registers 2

    .line 1429
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-eqz v0, :cond_9

    .line 1430
    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$1900(Landroid/support/constraint/motion/MotionScene$Transition;)F

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method getStartId()I
    .registers 2

    .line 1344
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    return v0

    .line 1347
    :cond_6
    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$100(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v0

    return v0
.end method

.method public getTransitionById(I)Landroid/support/constraint/motion/MotionScene$Transition;
    .registers 5

    .line 330
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/motion/MotionScene$Transition;

    .line 331
    invoke-static {v1}, Landroid/support/constraint/motion/MotionScene$Transition;->access$300(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v2

    if-ne v2, p1, :cond_6

    return-object v1

    :cond_19
    const/4 p1, 0x0

    return-object p1
.end method

.method getTransitionDirection(I)I
    .registers 4

    .line 1139
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/motion/MotionScene$Transition;

    .line 1140
    invoke-static {v1}, Landroid/support/constraint/motion/MotionScene$Transition;->access$100(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v1

    if-ne v1, p1, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_1a
    const/4 p1, 0x1

    return p1
.end method

.method public getTransitionsWithState(I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/support/constraint/motion/MotionScene$Transition;",
            ">;"
        }
    .end annotation

    .line 229
    invoke-direct {p0, p1}, Landroid/support/constraint/motion/MotionScene;->getRealID(I)I

    move-result p1

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 231
    iget-object v1, p0, Landroid/support/constraint/motion/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/motion/MotionScene$Transition;

    .line 232
    invoke-static {v2}, Landroid/support/constraint/motion/MotionScene$Transition;->access$100(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v3

    if-eq v3, p1, :cond_27

    invoke-static {v2}, Landroid/support/constraint/motion/MotionScene$Transition;->access$000(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v3

    if-ne v3, p1, :cond_f

    .line 233
    :cond_27
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_2b
    return-object v0
.end method

.method hasKeyFramePosition(Landroid/view/View;I)Z
    .registers 7

    .line 1155
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 1158
    :cond_6
    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$1300(Landroid/support/constraint/motion/MotionScene$Transition;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/motion/KeyFrames;

    .line 1159
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/constraint/motion/KeyFrames;->getKeyFramesForView(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1160
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/motion/Key;

    .line 1161
    iget v3, v3, Landroid/support/constraint/motion/Key;->mFramePosition:I

    if-ne v3, p2, :cond_26

    const/4 p1, 0x1

    return p1

    :cond_38
    return v1
.end method

.method public lookUpConstraintId(Ljava/lang/String;)I
    .registers 3

    .line 1544
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mConstraintSetIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public lookUpConstraintName(I)Ljava/lang/String;
    .registers 5

    .line 1553
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mConstraintSetIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1554
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_a

    .line 1555
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_29
    const/4 p1, 0x0

    return-object p1
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    return-void
.end method

.method processScrollMove(FF)V
    .registers 4

    .line 1316
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-eqz v0, :cond_13

    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1317
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/constraint/motion/TouchResponse;->scrollMove(FF)V

    :cond_13
    return-void
.end method

.method processScrollUp(FF)V
    .registers 4

    .line 1322
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-eqz v0, :cond_13

    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1323
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/constraint/motion/TouchResponse;->scrollUp(FF)V

    :cond_13
    return-void
.end method

.method processTouchEvent(Landroid/view/MotionEvent;ILandroid/support/constraint/motion/MotionLayout;)V
    .registers 16

    .line 1232
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 1233
    iget-object v1, p0, Landroid/support/constraint/motion/MotionScene;->mVelocityTracker:Landroid/support/constraint/motion/MotionLayout$MotionTracker;

    if-nez v1, :cond_11

    .line 1234
    iget-object v1, p0, Landroid/support/constraint/motion/MotionScene;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v1}, Landroid/support/constraint/motion/MotionLayout;->obtainVelocityTracker()Landroid/support/constraint/motion/MotionLayout$MotionTracker;

    move-result-object v1

    iput-object v1, p0, Landroid/support/constraint/motion/MotionScene;->mVelocityTracker:Landroid/support/constraint/motion/MotionLayout$MotionTracker;

    .line 1236
    :cond_11
    iget-object v1, p0, Landroid/support/constraint/motion/MotionScene;->mVelocityTracker:Landroid/support/constraint/motion/MotionLayout$MotionTracker;

    invoke-interface {v1, p1}, Landroid/support/constraint/motion/MotionLayout$MotionTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq p2, v2, :cond_ec

    .line 1248
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_80

    const/4 v6, 0x2

    if-eq v4, v6, :cond_27

    goto/16 :goto_ec

    .line 1272
    :cond_27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iget v6, p0, Landroid/support/constraint/motion/MotionScene;->mLastTouchY:F

    sub-float/2addr v4, v6

    .line 1273
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iget v7, p0, Landroid/support/constraint/motion/MotionScene;->mLastTouchX:F

    sub-float/2addr v6, v7

    float-to-double v7, v6

    const-wide/16 v9, 0x0

    cmpl-double v11, v7, v9

    if-nez v11, :cond_41

    float-to-double v7, v4

    cmpl-double v11, v7, v9

    if-eqz v11, :cond_45

    .line 1277
    :cond_41
    iget-object v7, p0, Landroid/support/constraint/motion/MotionScene;->mLastTouchDown:Landroid/view/MotionEvent;

    if-nez v7, :cond_46

    :cond_45
    return-void

    .line 1281
    :cond_46
    invoke-virtual {p0, p2, v6, v4, v7}, Landroid/support/constraint/motion/MotionScene;->bestTransitionFor(IFFLandroid/view/MotionEvent;)Landroid/support/constraint/motion/MotionScene$Transition;

    move-result-object v4

    if-eqz v4, :cond_ec

    .line 1288
    invoke-virtual {p3, v4}, Landroid/support/constraint/motion/MotionLayout;->setTransition(Landroid/support/constraint/motion/MotionScene$Transition;)V

    .line 1289
    iget-object v4, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {v4}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object v4

    iget-object v6, p0, Landroid/support/constraint/motion/MotionScene;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v4, v6, v0}, Landroid/support/constraint/motion/TouchResponse;->getTouchRegion(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_70

    .line 1290
    iget-object v4, p0, Landroid/support/constraint/motion/MotionScene;->mLastTouchDown:Landroid/view/MotionEvent;

    .line 1291
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget-object v6, p0, Landroid/support/constraint/motion/MotionScene;->mLastTouchDown:Landroid/view/MotionEvent;

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v0, v4, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_70

    const/4 v5, 0x1

    :cond_70
    iput-boolean v5, p0, Landroid/support/constraint/motion/MotionScene;->mMotionOutsideRegion:Z

    .line 1292
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object v0

    iget v4, p0, Landroid/support/constraint/motion/MotionScene;->mLastTouchX:F

    iget v5, p0, Landroid/support/constraint/motion/MotionScene;->mLastTouchY:F

    invoke-virtual {v0, v4, v5}, Landroid/support/constraint/motion/TouchResponse;->setUpTouchEvent(FF)V

    goto :goto_ec

    .line 1250
    :cond_80
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    iput p2, p0, Landroid/support/constraint/motion/MotionScene;->mLastTouchX:F

    .line 1251
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iput p2, p0, Landroid/support/constraint/motion/MotionScene;->mLastTouchY:F

    .line 1252
    iput-object p1, p0, Landroid/support/constraint/motion/MotionScene;->mLastTouchDown:Landroid/view/MotionEvent;

    .line 1253
    iget-object p1, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {p1}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object p1

    if-eqz p1, :cond_eb

    .line 1254
    iget-object p1, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {p1}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object p1

    iget-object p2, p0, Landroid/support/constraint/motion/MotionScene;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {p1, p2, v0}, Landroid/support/constraint/motion/TouchResponse;->getLimitBoundsTo(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    if-eqz p1, :cond_b9

    .line 1255
    iget-object p2, p0, Landroid/support/constraint/motion/MotionScene;->mLastTouchDown:Landroid/view/MotionEvent;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    iget-object p3, p0, Landroid/support/constraint/motion/MotionScene;->mLastTouchDown:Landroid/view/MotionEvent;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-nez p1, :cond_b9

    .line 1256
    iput-object v1, p0, Landroid/support/constraint/motion/MotionScene;->mLastTouchDown:Landroid/view/MotionEvent;

    return-void

    .line 1259
    :cond_b9
    iget-object p1, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {p1}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object p1

    iget-object p2, p0, Landroid/support/constraint/motion/MotionScene;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {p1, p2, v0}, Landroid/support/constraint/motion/TouchResponse;->getTouchRegion(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    if-eqz p1, :cond_dc

    .line 1260
    iget-object p2, p0, Landroid/support/constraint/motion/MotionScene;->mLastTouchDown:Landroid/view/MotionEvent;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    iget-object p3, p0, Landroid/support/constraint/motion/MotionScene;->mLastTouchDown:Landroid/view/MotionEvent;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-nez p1, :cond_dc

    .line 1261
    iput-boolean v3, p0, Landroid/support/constraint/motion/MotionScene;->mMotionOutsideRegion:Z

    goto :goto_de

    .line 1263
    :cond_dc
    iput-boolean v5, p0, Landroid/support/constraint/motion/MotionScene;->mMotionOutsideRegion:Z

    .line 1265
    :goto_de
    iget-object p1, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {p1}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object p1

    iget p2, p0, Landroid/support/constraint/motion/MotionScene;->mLastTouchX:F

    iget p3, p0, Landroid/support/constraint/motion/MotionScene;->mLastTouchY:F

    invoke-virtual {p1, p2, p3}, Landroid/support/constraint/motion/TouchResponse;->setDown(FF)V

    :cond_eb
    return-void

    .line 1297
    :cond_ec
    :goto_ec
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-eqz v0, :cond_105

    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object v0

    if-eqz v0, :cond_105

    iget-boolean v0, p0, Landroid/support/constraint/motion/MotionScene;->mMotionOutsideRegion:Z

    if-nez v0, :cond_105

    .line 1298
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object v0

    iget-object v4, p0, Landroid/support/constraint/motion/MotionScene;->mVelocityTracker:Landroid/support/constraint/motion/MotionLayout$MotionTracker;

    invoke-virtual {v0, p1, v4, p2, p0}, Landroid/support/constraint/motion/TouchResponse;->processTouchEvent(Landroid/view/MotionEvent;Landroid/support/constraint/motion/MotionLayout$MotionTracker;ILandroid/support/constraint/motion/MotionScene;)V

    .line 1301
    :cond_105
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    iput p2, p0, Landroid/support/constraint/motion/MotionScene;->mLastTouchX:F

    .line 1302
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iput p2, p0, Landroid/support/constraint/motion/MotionScene;->mLastTouchY:F

    .line 1304
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v3, :cond_129

    .line 1305
    iget-object p1, p0, Landroid/support/constraint/motion/MotionScene;->mVelocityTracker:Landroid/support/constraint/motion/MotionLayout$MotionTracker;

    if-eqz p1, :cond_129

    .line 1306
    invoke-interface {p1}, Landroid/support/constraint/motion/MotionLayout$MotionTracker;->recycle()V

    .line 1307
    iput-object v1, p0, Landroid/support/constraint/motion/MotionScene;->mVelocityTracker:Landroid/support/constraint/motion/MotionLayout$MotionTracker;

    .line 1308
    iget p1, p3, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    if-eq p1, v2, :cond_129

    .line 1309
    iget p1, p3, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    invoke-virtual {p0, p3, p1}, Landroid/support/constraint/motion/MotionScene;->autoTransition(Landroid/support/constraint/motion/MotionLayout;I)Z

    :cond_129
    return-void
.end method

.method readFallback(Landroid/support/constraint/motion/MotionLayout;)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1471
    :goto_2
    iget-object v2, p0, Landroid/support/constraint/motion/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 1472
    iget-object v2, p0, Landroid/support/constraint/motion/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1473
    invoke-direct {p0, v2}, Landroid/support/constraint/motion/MotionScene;->hasCycleDependency(I)Z

    move-result v3

    if-eqz v3, :cond_1e

    const-string p1, "MotionScene"

    const-string v0, "Cannot be derived from yourself"

    .line 1474
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1477
    :cond_1e
    invoke-direct {p0, v2}, Landroid/support/constraint/motion/MotionScene;->readConstraintChain(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1479
    :cond_24
    :goto_24
    iget-object v1, p0, Landroid/support/constraint/motion/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_3a

    .line 1480
    iget-object v1, p0, Landroid/support/constraint/motion/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/ConstraintSet;

    .line 1481
    invoke-virtual {v1, p1}, Landroid/support/constraint/ConstraintSet;->readFallback(Landroid/support/constraint/ConstraintLayout;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_3a
    return-void
.end method

.method public removeTransition(Landroid/support/constraint/motion/MotionScene$Transition;)V
    .registers 3

    .line 172
    invoke-direct {p0, p1}, Landroid/support/constraint/motion/MotionScene;->getIndex(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_c

    .line 174
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_c
    return-void
.end method

.method public setConstraintSet(ILandroid/support/constraint/ConstraintSet;)V
    .registers 4

    .line 1085
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setDuration(I)V
    .registers 3

    .line 1411
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-eqz v0, :cond_8

    .line 1412
    invoke-virtual {v0, p1}, Landroid/support/constraint/motion/MotionScene$Transition;->setDuration(I)V

    goto :goto_a

    .line 1414
    :cond_8
    iput p1, p0, Landroid/support/constraint/motion/MotionScene;->mDefaultDuration:I

    :goto_a
    return-void
.end method

.method public setKeyframe(Landroid/view/View;ILjava/lang/String;Ljava/lang/Object;)V
    .registers 9

    .line 1173
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-nez v0, :cond_5

    return-void

    .line 1176
    :cond_5
    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$1300(Landroid/support/constraint/motion/MotionScene$Transition;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/motion/KeyFrames;

    .line 1180
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/constraint/motion/KeyFrames;->getKeyFramesForView(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1184
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_25
    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/motion/Key;

    .line 1188
    iget v2, v2, Landroid/support/constraint/motion/Key;->mFramePosition:I

    if-ne v2, p2, :cond_25

    const/4 v2, 0x0

    if-eqz p4, :cond_40

    .line 1191
    move-object v3, p4

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto :goto_41

    :cond_40
    const/4 v3, 0x0

    :goto_41
    cmpl-float v2, v3, v2

    const-string v2, "app:PerpendicularPath_percent"

    .line 1203
    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    goto :goto_25

    :cond_49
    return-void
.end method

.method public setRtl(Z)V
    .registers 3

    .line 416
    iput-boolean p1, p0, Landroid/support/constraint/motion/MotionScene;->mRtl:Z

    .line 417
    iget-object p1, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-eqz p1, :cond_17

    invoke-static {p1}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 418
    iget-object p1, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {p1}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object p1

    iget-boolean v0, p0, Landroid/support/constraint/motion/MotionScene;->mRtl:Z

    invoke-virtual {p1, v0}, Landroid/support/constraint/motion/TouchResponse;->setRTL(Z)V

    :cond_17
    return-void
.end method

.method setTransition(II)V
    .registers 9

    .line 100
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mStateSet:Landroid/support/constraint/StateSet;

    const/4 v1, -0x1

    if-eqz v0, :cond_16

    .line 101
    invoke-virtual {v0, p1, v1, v1}, Landroid/support/constraint/StateSet;->stateGetConstraintID(III)I

    move-result v0

    if-eq v0, v1, :cond_c

    goto :goto_d

    :cond_c
    move v0, p1

    .line 105
    :goto_d
    iget-object v2, p0, Landroid/support/constraint/motion/MotionScene;->mStateSet:Landroid/support/constraint/StateSet;

    invoke-virtual {v2, p2, v1, v1}, Landroid/support/constraint/StateSet;->stateGetConstraintID(III)I

    move-result v2

    if-eq v2, v1, :cond_17

    goto :goto_18

    :cond_16
    move v0, p1

    :cond_17
    move v2, p2

    .line 115
    :goto_18
    iget-object v3, p0, Landroid/support/constraint/motion/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_58

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/motion/MotionScene$Transition;

    .line 116
    invoke-static {v4}, Landroid/support/constraint/motion/MotionScene$Transition;->access$000(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v5

    if-ne v5, v2, :cond_36

    .line 117
    invoke-static {v4}, Landroid/support/constraint/motion/MotionScene$Transition;->access$100(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v5

    if-eq v5, v0, :cond_42

    .line 118
    :cond_36
    invoke-static {v4}, Landroid/support/constraint/motion/MotionScene$Transition;->access$000(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v5

    if-ne v5, p2, :cond_1e

    .line 119
    invoke-static {v4}, Landroid/support/constraint/motion/MotionScene$Transition;->access$100(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v5

    if-ne v5, p1, :cond_1e

    .line 125
    :cond_42
    iput-object v4, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-eqz v4, :cond_57

    .line 126
    invoke-static {v4}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object p1

    if-eqz p1, :cond_57

    .line 127
    iget-object p1, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {p1}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object p1

    iget-boolean p2, p0, Landroid/support/constraint/motion/MotionScene;->mRtl:Z

    invoke-virtual {p1, p2}, Landroid/support/constraint/motion/TouchResponse;->setRTL(Z)V

    :cond_57
    return-void

    .line 133
    :cond_58
    iget-object p1, p0, Landroid/support/constraint/motion/MotionScene;->mDefaultTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    .line 134
    iget-object v3, p0, Landroid/support/constraint/motion/MotionScene;->mAbstractTransitionList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_60
    :goto_60
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_74

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/motion/MotionScene$Transition;

    .line 135
    invoke-static {v4}, Landroid/support/constraint/motion/MotionScene$Transition;->access$000(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v5

    if-ne v5, p2, :cond_60

    move-object p1, v4

    goto :goto_60

    .line 140
    :cond_74
    new-instance p2, Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-direct {p2, p0, p1}, Landroid/support/constraint/motion/MotionScene$Transition;-><init>(Landroid/support/constraint/motion/MotionScene;Landroid/support/constraint/motion/MotionScene$Transition;)V

    .line 142
    invoke-static {p2, v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$102(Landroid/support/constraint/motion/MotionScene$Transition;I)I

    .line 143
    invoke-static {p2, v2}, Landroid/support/constraint/motion/MotionScene$Transition;->access$002(Landroid/support/constraint/motion/MotionScene$Transition;I)I

    if-eq v0, v1, :cond_86

    .line 145
    iget-object p1, p0, Landroid/support/constraint/motion/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_86
    iput-object p2, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    return-void
.end method

.method public setTransition(Landroid/support/constraint/motion/MotionScene$Transition;)V
    .registers 3

    .line 212
    iput-object p1, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-eqz p1, :cond_15

    .line 213
    invoke-static {p1}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 214
    iget-object p1, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {p1}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object p1

    iget-boolean v0, p0, Landroid/support/constraint/motion/MotionScene;->mRtl:Z

    invoke-virtual {p1, v0}, Landroid/support/constraint/motion/TouchResponse;->setRTL(Z)V

    :cond_15
    return-void
.end method

.method setupTouch()V
    .registers 2

    .line 1450
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-eqz v0, :cond_13

    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1451
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/constraint/motion/TouchResponse;->setupTouch()V

    :cond_13
    return-void
.end method

.method supportTouch()Z
    .registers 4

    .line 1218
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/motion/MotionScene$Transition;

    .line 1219
    invoke-static {v1}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object v1

    if-eqz v1, :cond_6

    return v2

    .line 1223
    :cond_1a
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-eqz v0, :cond_25

    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object v0

    if-eqz v0, :cond_25

    goto :goto_26

    :cond_25
    const/4 v2, 0x0

    :goto_26
    return v2
.end method

.method public validateLayout(Landroid/support/constraint/motion/MotionLayout;)Z
    .registers 3

    .line 202
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    if-ne p1, v0, :cond_a

    iget-object p1, p1, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-ne p1, p0, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method
