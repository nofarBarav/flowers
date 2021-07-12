.class public Landroid/support/constraint/motion/MotionLayout;
.super Landroid/support/constraint/ConstraintLayout;
.source "MotionLayout.java"

# interfaces
.implements Landroid/support/v4/view/NestedScrollingParent2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/motion/MotionLayout$TransitionListener;,
        Landroid/support/constraint/motion/MotionLayout$DevModeDraw;,
        Landroid/support/constraint/motion/MotionLayout$Model;,
        Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;,
        Landroid/support/constraint/motion/MotionLayout$StateCache;,
        Landroid/support/constraint/motion/MotionLayout$MyTracker;,
        Landroid/support/constraint/motion/MotionLayout$MotionTracker;,
        Landroid/support/constraint/motion/MotionLayout$TransitionState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DEBUG_SHOW_NONE:I = 0x0

.field public static final DEBUG_SHOW_PATH:I = 0x2

.field public static final DEBUG_SHOW_PROGRESS:I = 0x1

.field private static final EPSILON:F = 1.0E-5f

.field public static IS_IN_EDIT_MODE:Z = false

.field static final MAX_KEY_FRAMES:I = 0x32

.field static final TAG:Ljava/lang/String; = "MotionLayout"

.field public static final TOUCH_UP_COMPLETE:I = 0x0

.field public static final TOUCH_UP_COMPLETE_TO_END:I = 0x2

.field public static final TOUCH_UP_COMPLETE_TO_START:I = 0x1

.field public static final TOUCH_UP_DECELERATE:I = 0x4

.field public static final TOUCH_UP_DECELERATE_AND_COMPLETE:I = 0x5

.field public static final TOUCH_UP_STOP:I = 0x3

.field public static final VELOCITY_LAYOUT:I = 0x1

.field public static final VELOCITY_POST_LAYOUT:I = 0x0

.field public static final VELOCITY_STATIC_LAYOUT:I = 0x3

.field public static final VELOCITY_STATIC_POST_LAYOUT:I = 0x2


# instance fields
.field firstDown:Z

.field private lastPos:F

.field private lastY:F

.field private mAnimationStartTime:J

.field private mBeginState:I

.field private mBoundsCheck:Landroid/graphics/RectF;

.field mCurrentState:I

.field mDebugPath:I

.field private mDecelerateLogic:Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;

.field private mDesignTool:Landroid/support/constraint/motion/DesignTool;

.field mDevModeDraw:Landroid/support/constraint/motion/MotionLayout$DevModeDraw;

.field private mEndState:I

.field mEndWrapHeight:I

.field mEndWrapWidth:I

.field mFrameArrayList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Landroid/support/constraint/motion/MotionController;",
            ">;"
        }
    .end annotation
.end field

.field private mFrames:I

.field mHeightMeasureMode:I

.field private mInLayout:Z

.field mInTransition:Z

.field mIndirectTransition:Z

.field private mInteractionEnabled:Z

.field mInterpolator:Landroid/view/animation/Interpolator;

.field mIsAnimating:Z

.field private mKeepAnimating:Z

.field private mKeyCache:Landroid/support/constraint/motion/KeyCache;

.field private mLastDrawTime:J

.field private mLastFps:F

.field private mLastHeightMeasureSpec:I

.field mLastLayoutHeight:I

.field mLastLayoutWidth:I

.field mLastVelocity:F

.field private mLastWidthMeasureSpec:I

.field private mListenerPosition:F

.field private mListenerState:I

.field protected mMeasureDuringTransition:Z

.field mModel:Landroid/support/constraint/motion/MotionLayout$Model;

.field private mNeedsFireTransitionCompleted:Z

.field mOldHeight:I

.field mOldWidth:I

.field private mOnHideHelpers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/motion/MotionHelper;",
            ">;"
        }
    .end annotation
.end field

.field private mOnShowHelpers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/motion/MotionHelper;",
            ">;"
        }
    .end annotation
.end field

.field mPostInterpolationPosition:F

.field private mRegionView:Landroid/view/View;

.field mScene:Landroid/support/constraint/motion/MotionScene;

.field mScrollTargetDT:F

.field mScrollTargetDX:F

.field mScrollTargetDY:F

.field mScrollTargetTime:J

.field mStartWrapHeight:I

.field mStartWrapWidth:I

.field private mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

.field private mStopLogic:Landroid/support/constraint/motion/utils/StopLogic;

.field private mTemporalInterpolator:Z

.field mTransitionCompleted:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTransitionDuration:F

.field mTransitionGoalPosition:F

.field private mTransitionInstantly:Z

.field mTransitionLastPosition:F

.field private mTransitionLastTime:J

.field private mTransitionListener:Landroid/support/constraint/motion/MotionLayout$TransitionListener;

.field private mTransitionListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/motion/MotionLayout$TransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field mTransitionPosition:F

.field mTransitionState:Landroid/support/constraint/motion/MotionLayout$TransitionState;

.field mUndergoingMotion:Z

.field mWidthMeasureMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 963
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 876
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mLastVelocity:F

    const/4 v0, -0x1

    .line 877
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    .line 878
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    .line 879
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    const/4 v0, 0x0

    .line 880
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mLastWidthMeasureSpec:I

    .line 881
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mLastHeightMeasureSpec:I

    const/4 v1, 0x1

    .line 882
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mInteractionEnabled:Z

    .line 884
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    const-wide/16 v2, 0x0

    .line 886
    iput-wide v2, p0, Landroid/support/constraint/motion/MotionLayout;->mAnimationStartTime:J

    const/high16 v2, 0x3f800000    # 1.0f

    .line 887
    iput v2, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionDuration:F

    .line 888
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    .line 889
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 891
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    .line 893
    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    .line 894
    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mIndirectTransition:Z

    .line 901
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mDebugPath:I

    .line 905
    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTemporalInterpolator:Z

    .line 906
    new-instance v2, Landroid/support/constraint/motion/utils/StopLogic;

    invoke-direct {v2}, Landroid/support/constraint/motion/utils/StopLogic;-><init>()V

    iput-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mStopLogic:Landroid/support/constraint/motion/utils/StopLogic;

    .line 907
    new-instance v2, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;

    invoke-direct {v2, p0}, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;-><init>(Landroid/support/constraint/motion/MotionLayout;)V

    iput-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mDecelerateLogic:Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;

    .line 911
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->firstDown:Z

    .line 918
    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mUndergoingMotion:Z

    .line 923
    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mKeepAnimating:Z

    const/4 v1, 0x0

    .line 925
    iput-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    .line 926
    iput-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    .line 927
    iput-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    .line 928
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mFrames:I

    const-wide/16 v2, -0x1

    .line 929
    iput-wide v2, p0, Landroid/support/constraint/motion/MotionLayout;->mLastDrawTime:J

    .line 930
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mLastFps:F

    .line 931
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mListenerState:I

    .line 932
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mListenerPosition:F

    .line 933
    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mIsAnimating:Z

    .line 940
    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mMeasureDuringTransition:Z

    .line 948
    new-instance p1, Landroid/support/constraint/motion/KeyCache;

    invoke-direct {p1}, Landroid/support/constraint/motion/KeyCache;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mKeyCache:Landroid/support/constraint/motion/KeyCache;

    .line 949
    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mInLayout:Z

    .line 959
    sget-object p1, Landroid/support/constraint/motion/MotionLayout$TransitionState;->UNDEFINED:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionState:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    .line 2313
    new-instance p1, Landroid/support/constraint/motion/MotionLayout$Model;

    invoke-direct {p1, p0}, Landroid/support/constraint/motion/MotionLayout$Model;-><init>(Landroid/support/constraint/motion/MotionLayout;)V

    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    .line 3159
    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mNeedsFireTransitionCompleted:Z

    .line 3365
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    .line 3366
    iput-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mRegionView:Landroid/view/View;

    .line 3715
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    .line 964
    invoke-direct {p0, v1}, Landroid/support/constraint/motion/MotionLayout;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    .line 968
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 876
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mLastVelocity:F

    const/4 v0, -0x1

    .line 877
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    .line 878
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    .line 879
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    const/4 v0, 0x0

    .line 880
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mLastWidthMeasureSpec:I

    .line 881
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mLastHeightMeasureSpec:I

    const/4 v1, 0x1

    .line 882
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mInteractionEnabled:Z

    .line 884
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    const-wide/16 v2, 0x0

    .line 886
    iput-wide v2, p0, Landroid/support/constraint/motion/MotionLayout;->mAnimationStartTime:J

    const/high16 v2, 0x3f800000    # 1.0f

    .line 887
    iput v2, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionDuration:F

    .line 888
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    .line 889
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 891
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    .line 893
    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    .line 894
    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mIndirectTransition:Z

    .line 901
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mDebugPath:I

    .line 905
    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTemporalInterpolator:Z

    .line 906
    new-instance v2, Landroid/support/constraint/motion/utils/StopLogic;

    invoke-direct {v2}, Landroid/support/constraint/motion/utils/StopLogic;-><init>()V

    iput-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mStopLogic:Landroid/support/constraint/motion/utils/StopLogic;

    .line 907
    new-instance v2, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;

    invoke-direct {v2, p0}, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;-><init>(Landroid/support/constraint/motion/MotionLayout;)V

    iput-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mDecelerateLogic:Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;

    .line 911
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->firstDown:Z

    .line 918
    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mUndergoingMotion:Z

    .line 923
    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mKeepAnimating:Z

    const/4 v1, 0x0

    .line 925
    iput-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    .line 926
    iput-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    .line 927
    iput-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    .line 928
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mFrames:I

    const-wide/16 v2, -0x1

    .line 929
    iput-wide v2, p0, Landroid/support/constraint/motion/MotionLayout;->mLastDrawTime:J

    .line 930
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mLastFps:F

    .line 931
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mListenerState:I

    .line 932
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mListenerPosition:F

    .line 933
    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mIsAnimating:Z

    .line 940
    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mMeasureDuringTransition:Z

    .line 948
    new-instance p1, Landroid/support/constraint/motion/KeyCache;

    invoke-direct {p1}, Landroid/support/constraint/motion/KeyCache;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mKeyCache:Landroid/support/constraint/motion/KeyCache;

    .line 949
    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mInLayout:Z

    .line 959
    sget-object p1, Landroid/support/constraint/motion/MotionLayout$TransitionState;->UNDEFINED:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionState:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    .line 2313
    new-instance p1, Landroid/support/constraint/motion/MotionLayout$Model;

    invoke-direct {p1, p0}, Landroid/support/constraint/motion/MotionLayout$Model;-><init>(Landroid/support/constraint/motion/MotionLayout;)V

    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    .line 3159
    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mNeedsFireTransitionCompleted:Z

    .line 3365
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    .line 3366
    iput-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mRegionView:Landroid/view/View;

    .line 3715
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    .line 969
    invoke-direct {p0, p2}, Landroid/support/constraint/motion/MotionLayout;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    .line 973
    invoke-direct {p0, p1, p2, p3}, Landroid/support/constraint/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 876
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mLastVelocity:F

    const/4 p3, -0x1

    .line 877
    iput p3, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    .line 878
    iput p3, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    .line 879
    iput p3, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    const/4 p3, 0x0

    .line 880
    iput p3, p0, Landroid/support/constraint/motion/MotionLayout;->mLastWidthMeasureSpec:I

    .line 881
    iput p3, p0, Landroid/support/constraint/motion/MotionLayout;->mLastHeightMeasureSpec:I

    const/4 v0, 0x1

    .line 882
    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mInteractionEnabled:Z

    .line 884
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    const-wide/16 v1, 0x0

    .line 886
    iput-wide v1, p0, Landroid/support/constraint/motion/MotionLayout;->mAnimationStartTime:J

    const/high16 v1, 0x3f800000    # 1.0f

    .line 887
    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionDuration:F

    .line 888
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    .line 889
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 891
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    .line 893
    iput-boolean p3, p0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    .line 894
    iput-boolean p3, p0, Landroid/support/constraint/motion/MotionLayout;->mIndirectTransition:Z

    .line 901
    iput p3, p0, Landroid/support/constraint/motion/MotionLayout;->mDebugPath:I

    .line 905
    iput-boolean p3, p0, Landroid/support/constraint/motion/MotionLayout;->mTemporalInterpolator:Z

    .line 906
    new-instance v1, Landroid/support/constraint/motion/utils/StopLogic;

    invoke-direct {v1}, Landroid/support/constraint/motion/utils/StopLogic;-><init>()V

    iput-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mStopLogic:Landroid/support/constraint/motion/utils/StopLogic;

    .line 907
    new-instance v1, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;

    invoke-direct {v1, p0}, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;-><init>(Landroid/support/constraint/motion/MotionLayout;)V

    iput-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mDecelerateLogic:Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;

    .line 911
    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->firstDown:Z

    .line 918
    iput-boolean p3, p0, Landroid/support/constraint/motion/MotionLayout;->mUndergoingMotion:Z

    .line 923
    iput-boolean p3, p0, Landroid/support/constraint/motion/MotionLayout;->mKeepAnimating:Z

    const/4 v0, 0x0

    .line 925
    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    .line 926
    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    .line 927
    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    .line 928
    iput p3, p0, Landroid/support/constraint/motion/MotionLayout;->mFrames:I

    const-wide/16 v1, -0x1

    .line 929
    iput-wide v1, p0, Landroid/support/constraint/motion/MotionLayout;->mLastDrawTime:J

    .line 930
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mLastFps:F

    .line 931
    iput p3, p0, Landroid/support/constraint/motion/MotionLayout;->mListenerState:I

    .line 932
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mListenerPosition:F

    .line 933
    iput-boolean p3, p0, Landroid/support/constraint/motion/MotionLayout;->mIsAnimating:Z

    .line 940
    iput-boolean p3, p0, Landroid/support/constraint/motion/MotionLayout;->mMeasureDuringTransition:Z

    .line 948
    new-instance p1, Landroid/support/constraint/motion/KeyCache;

    invoke-direct {p1}, Landroid/support/constraint/motion/KeyCache;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mKeyCache:Landroid/support/constraint/motion/KeyCache;

    .line 949
    iput-boolean p3, p0, Landroid/support/constraint/motion/MotionLayout;->mInLayout:Z

    .line 959
    sget-object p1, Landroid/support/constraint/motion/MotionLayout$TransitionState;->UNDEFINED:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionState:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    .line 2313
    new-instance p1, Landroid/support/constraint/motion/MotionLayout$Model;

    invoke-direct {p1, p0}, Landroid/support/constraint/motion/MotionLayout$Model;-><init>(Landroid/support/constraint/motion/MotionLayout;)V

    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    .line 3159
    iput-boolean p3, p0, Landroid/support/constraint/motion/MotionLayout;->mNeedsFireTransitionCompleted:Z

    .line 3365
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    .line 3366
    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mRegionView:Landroid/view/View;

    .line 3715
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    .line 974
    invoke-direct {p0, p2}, Landroid/support/constraint/motion/MotionLayout;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Landroid/support/constraint/motion/MotionLayout;)I
    .registers 1

    .line 859
    iget p0, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    return p0
.end method

.method static synthetic access$100(Landroid/support/constraint/motion/MotionLayout;)I
    .registers 1

    .line 859
    iget p0, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    return p0
.end method

.method static synthetic access$1000(Landroid/support/constraint/motion/MotionLayout;)I
    .registers 1

    .line 859
    iget p0, p0, Landroid/support/constraint/motion/MotionLayout;->mLastHeightMeasureSpec:I

    return p0
.end method

.method static synthetic access$1100(Landroid/support/constraint/motion/MotionLayout;)V
    .registers 1

    .line 859
    invoke-direct {p0}, Landroid/support/constraint/motion/MotionLayout;->setupMotionViews()V

    return-void
.end method

.method static synthetic access$1200(Landroid/support/constraint/motion/MotionLayout;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V
    .registers 5

    .line 859
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/constraint/motion/MotionLayout;->resolveSystem(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V

    return-void
.end method

.method static synthetic access$1300(Landroid/support/constraint/motion/MotionLayout;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V
    .registers 5

    .line 859
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/constraint/motion/MotionLayout;->resolveSystem(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V

    return-void
.end method

.method static synthetic access$1400(Landroid/support/constraint/motion/MotionLayout;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V
    .registers 5

    .line 859
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/constraint/motion/MotionLayout;->resolveSystem(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V

    return-void
.end method

.method static synthetic access$1500(Landroid/support/constraint/motion/MotionLayout;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V
    .registers 5

    .line 859
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/constraint/motion/MotionLayout;->resolveSystem(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V

    return-void
.end method

.method static synthetic access$1600(Landroid/support/constraint/motion/MotionLayout;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V
    .registers 5

    .line 859
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/constraint/motion/MotionLayout;->resolveSystem(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V

    return-void
.end method

.method static synthetic access$1700(Landroid/support/constraint/motion/MotionLayout;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V
    .registers 5

    .line 859
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/constraint/motion/MotionLayout;->resolveSystem(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V

    return-void
.end method

.method static synthetic access$1800(Landroid/support/constraint/motion/MotionLayout;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V
    .registers 5

    .line 859
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/constraint/motion/MotionLayout;->resolveSystem(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V

    return-void
.end method

.method static synthetic access$1900(Landroid/support/constraint/motion/MotionLayout;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V
    .registers 5

    .line 859
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/constraint/motion/MotionLayout;->resolveSystem(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V

    return-void
.end method

.method static synthetic access$200(Landroid/support/constraint/motion/MotionLayout;)Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .registers 1

    .line 859
    iget-object p0, p0, Landroid/support/constraint/motion/MotionLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    return-object p0
.end method

.method static synthetic access$2000(Landroid/support/constraint/motion/MotionLayout;IIIIZZ)V
    .registers 7

    .line 859
    invoke-virtual/range {p0 .. p6}, Landroid/support/constraint/motion/MotionLayout;->resolveMeasuredDimension(IIIIZZ)V

    return-void
.end method

.method static synthetic access$300(Landroid/support/constraint/motion/MotionLayout;)Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .registers 1

    .line 859
    iget-object p0, p0, Landroid/support/constraint/motion/MotionLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    return-object p0
.end method

.method static synthetic access$400(Landroid/support/constraint/motion/MotionLayout;)Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .registers 1

    .line 859
    iget-object p0, p0, Landroid/support/constraint/motion/MotionLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    return-object p0
.end method

.method static synthetic access$500(Landroid/support/constraint/motion/MotionLayout;)Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .registers 1

    .line 859
    iget-object p0, p0, Landroid/support/constraint/motion/MotionLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    return-object p0
.end method

.method static synthetic access$600(Landroid/support/constraint/motion/MotionLayout;)Z
    .registers 1

    .line 859
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->isRtl()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Landroid/support/constraint/motion/MotionLayout;)Z
    .registers 1

    .line 859
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->isRtl()Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Landroid/support/constraint/motion/MotionLayout;ZLandroid/view/View;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V
    .registers 6

    .line 859
    invoke-virtual/range {p0 .. p5}, Landroid/support/constraint/motion/MotionLayout;->applyConstraintsFromLayoutParams(ZLandroid/view/View;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V

    return-void
.end method

.method static synthetic access$900(Landroid/support/constraint/motion/MotionLayout;)I
    .registers 1

    .line 859
    iget p0, p0, Landroid/support/constraint/motion/MotionLayout;->mLastWidthMeasureSpec:I

    return p0
.end method

.method private checkStructure()V
    .registers 12

    .line 3263
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    const-string v1, "MotionLayout"

    if-nez v0, :cond_c

    const-string v0, "CHECK: motion scene not set! set \"app:layoutDescription=\"@xml/file\""

    .line 3264
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3268
    :cond_c
    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene;->getStartId()I

    move-result v0

    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v2}, Landroid/support/constraint/motion/MotionScene;->getStartId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/support/constraint/motion/MotionLayout;->checkStructure(ILandroid/support/constraint/ConstraintSet;)V

    .line 3269
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 3270
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 3271
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v3}, Landroid/support/constraint/motion/MotionScene;->getDefinedTransitions()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_31
    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/motion/MotionScene$Transition;

    .line 3272
    iget-object v5, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget-object v5, v5, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-ne v4, v5, :cond_48

    const-string v5, "CHECK: CURRENT"

    .line 3273
    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3275
    :cond_48
    invoke-direct {p0, v4}, Landroid/support/constraint/motion/MotionLayout;->checkStructure(Landroid/support/constraint/motion/MotionScene$Transition;)V

    .line 3276
    invoke-virtual {v4}, Landroid/support/constraint/motion/MotionScene$Transition;->getStartConstraintSetId()I

    move-result v5

    .line 3277
    invoke-virtual {v4}, Landroid/support/constraint/motion/MotionScene$Transition;->getEndConstraintSetId()I

    move-result v4

    .line 3278
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/support/constraint/motion/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 3279
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v4}, Landroid/support/constraint/motion/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    .line 3280
    invoke-virtual {v0, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    const-string v9, "->"

    if-ne v8, v4, :cond_85

    .line 3282
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CHECK: two transitions with the same start and end "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3285
    :cond_85
    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    if-ne v8, v5, :cond_a5

    .line 3287
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CHECK: you can\'t have reverse transitions"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3290
    :cond_a5
    invoke-virtual {v0, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 3291
    invoke-virtual {v2, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 3292
    iget-object v7, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v7, v5}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v5

    if-nez v5, :cond_c7

    .line 3293
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " no such constraintSetStart "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3296
    :cond_c7
    iget-object v5, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v5, v4}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v4

    if-nez v4, :cond_31

    .line 3297
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " no such constraintSetEnd "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_31

    :cond_e5
    return-void
.end method

.method private checkStructure(ILandroid/support/constraint/ConstraintSet;)V
    .registers 13

    .line 3303
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/constraint/motion/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 3304
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_e
    const/4 v3, -0x1

    const-string v4, "CHECK: "

    const-string v5, "MotionLayout"

    if-ge v2, v0, :cond_6d

    .line 3306
    invoke-virtual {p0, v2}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 3307
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v7

    if-ne v7, v3, :cond_46

    .line 3309
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ALL VIEWS SHOULD HAVE ID\'s "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3310
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " does not!"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3309
    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3312
    :cond_46
    invoke-virtual {p2, v7}, Landroid/support/constraint/ConstraintSet;->getConstraint(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v3

    if-nez v3, :cond_6a

    .line 3314
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " NO CONSTRAINTS for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Landroid/support/constraint/motion/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6a
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 3317
    :cond_6d
    invoke-virtual {p2}, Landroid/support/constraint/ConstraintSet;->getKnownIds()[I

    move-result-object v0

    .line 3318
    :goto_71
    array-length v2, v0

    if-ge v1, v2, :cond_e9

    .line 3319
    aget v2, v0, v1

    .line 3320
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2}, Landroid/support/constraint/motion/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 3321
    aget v7, v0, v1

    invoke-virtual {p0, v7}, Landroid/support/constraint/motion/MotionLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_a0

    .line 3322
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " NO View matches id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3324
    :cond_a0
    invoke-virtual {p2, v2}, Landroid/support/constraint/ConstraintSet;->getHeight(I)I

    move-result v7

    const-string v8, ") no LAYOUT_HEIGHT"

    const-string v9, "("

    if-ne v7, v3, :cond_c5

    .line 3325
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3327
    :cond_c5
    invoke-virtual {p2, v2}, Landroid/support/constraint/ConstraintSet;->getWidth(I)I

    move-result v2

    if-ne v2, v3, :cond_e6

    .line 3328
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e6
    add-int/lit8 v1, v1, 0x1

    goto :goto_71

    :cond_e9
    return-void
.end method

.method private checkStructure(Landroid/support/constraint/motion/MotionScene$Transition;)V
    .registers 5

    .line 3334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CHECK: transition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/constraint/motion/MotionScene$Transition;->debugString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotionLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHECK: transition.setDuration = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionScene$Transition;->getDuration()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3336
    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionScene$Transition;->getStartConstraintSetId()I

    move-result v0

    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionScene$Transition;->getEndConstraintSetId()I

    move-result p1

    if-ne v0, p1, :cond_45

    const-string p1, "CHECK: start and end constraint set should not be the same!"

    .line 3337
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    return-void
.end method

.method private computeCurrentPositions()V
    .registers 5

    .line 1747
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_1c

    .line 1749
    invoke-virtual {p0, v1}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1750
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/motion/MotionController;

    if-nez v3, :cond_16

    goto :goto_19

    .line 1754
    :cond_16
    invoke-virtual {v3, v2}, Landroid/support/constraint/motion/MotionController;->setStartCurrentState(Landroid/view/View;)V

    :goto_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1c
    return-void
.end method

.method private debugPos()V
    .registers 7

    const/4 v0, 0x0

    .line 2859
    :goto_1
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_5d

    .line 2860
    invoke-virtual {p0, v0}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2861
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/support/constraint/motion/Debug;->getLocation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/support/constraint/motion/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2862
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    invoke-static {v4, v5}, Landroid/support/constraint/motion/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/support/constraint/motion/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2863
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2864
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MotionLayout"

    .line 2861
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5d
    return-void
.end method

.method private evaluateLayout()V
    .registers 15

    .line 2932
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    .line 2933
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getNanoTime()J

    move-result-wide v1

    .line 2936
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    instance-of v4, v3, Landroid/support/constraint/motion/utils/StopLogic;

    const v5, 0x3089705f    # 1.0E-9f

    const/4 v6, 0x0

    if-nez v4, :cond_24

    .line 2937
    iget-wide v7, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastTime:J

    sub-long v7, v1, v7

    long-to-float v4, v7

    mul-float v4, v4, v0

    mul-float v4, v4, v5

    iget v7, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionDuration:F

    div-float/2addr v4, v7

    goto :goto_25

    :cond_24
    const/4 v4, 0x0

    .line 2939
    :goto_25
    iget v7, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    add-float/2addr v7, v4

    .line 2942
    iget-boolean v4, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionInstantly:Z

    if-eqz v4, :cond_2e

    .line 2943
    iget v7, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    :cond_2e
    const/4 v4, 0x0

    cmpl-float v8, v0, v6

    if-lez v8, :cond_39

    .line 2946
    iget v8, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    cmpl-float v8, v7, v8

    if-gez v8, :cond_43

    :cond_39
    cmpg-float v8, v0, v6

    if-gtz v8, :cond_47

    iget v8, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    cmpg-float v8, v7, v8

    if-gtz v8, :cond_47

    .line 2948
    :cond_43
    iget v7, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    const/4 v8, 0x1

    goto :goto_48

    :cond_47
    const/4 v8, 0x0

    :goto_48
    if-eqz v3, :cond_5f

    if-nez v8, :cond_5f

    .line 2952
    iget-boolean v8, p0, Landroid/support/constraint/motion/MotionLayout;->mTemporalInterpolator:Z

    if-eqz v8, :cond_5b

    .line 2953
    iget-wide v7, p0, Landroid/support/constraint/motion/MotionLayout;->mAnimationStartTime:J

    sub-long/2addr v1, v7

    long-to-float v1, v1

    mul-float v1, v1, v5

    .line 2954
    invoke-interface {v3, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v7

    goto :goto_5f

    .line 2956
    :cond_5b
    invoke-interface {v3, v7}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v7

    :cond_5f
    :goto_5f
    cmpl-float v1, v0, v6

    if-lez v1, :cond_69

    .line 2959
    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    cmpl-float v1, v7, v1

    if-gez v1, :cond_73

    :cond_69
    cmpg-float v0, v0, v6

    if-gtz v0, :cond_75

    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    cmpg-float v0, v7, v0

    if-gtz v0, :cond_75

    .line 2961
    :cond_73
    iget v7, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    .line 2963
    :cond_75
    iput v7, p0, Landroid/support/constraint/motion/MotionLayout;->mPostInterpolationPosition:F

    .line 2964
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getChildCount()I

    move-result v0

    .line 2965
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getNanoTime()J

    move-result-wide v1

    :goto_7f
    if-ge v4, v0, :cond_9a

    .line 2967
    invoke-virtual {p0, v4}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2968
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Landroid/support/constraint/motion/MotionController;

    if-eqz v8, :cond_97

    .line 2970
    iget-object v13, p0, Landroid/support/constraint/motion/MotionLayout;->mKeyCache:Landroid/support/constraint/motion/KeyCache;

    move v10, v7

    move-wide v11, v1

    invoke-virtual/range {v8 .. v13}, Landroid/support/constraint/motion/MotionController;->interpolate(Landroid/view/View;FJLandroid/support/constraint/motion/KeyCache;)Z

    :cond_97
    add-int/lit8 v4, v4, 0x1

    goto :goto_7f

    .line 2973
    :cond_9a
    iget-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mMeasureDuringTransition:Z

    if-eqz v0, :cond_a1

    .line 2974
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->requestLayout()V

    :cond_a1
    return-void
.end method

.method private fireTransitionChange()V
    .registers 7

    .line 3687
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListener:Landroid/support/constraint/motion/MotionLayout$TransitionListener;

    if-nez v0, :cond_e

    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_76

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_76

    .line 3688
    :cond_e
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mListenerPosition:F

    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_76

    .line 3689
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mListenerState:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_45

    .line 3690
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListener:Landroid/support/constraint/motion/MotionLayout$TransitionListener;

    if-eqz v0, :cond_27

    .line 3691
    iget v3, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    iget v4, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    invoke-interface {v0, p0, v3, v4}, Landroid/support/constraint/motion/MotionLayout$TransitionListener;->onTransitionStarted(Landroid/support/constraint/motion/MotionLayout;II)V

    .line 3693
    :cond_27
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_43

    .line 3694
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/motion/MotionLayout$TransitionListener;

    .line 3695
    iget v4, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    iget v5, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    invoke-interface {v3, p0, v4, v5}, Landroid/support/constraint/motion/MotionLayout$TransitionListener;->onTransitionStarted(Landroid/support/constraint/motion/MotionLayout;II)V

    goto :goto_2f

    .line 3698
    :cond_43
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mIsAnimating:Z

    .line 3700
    :cond_45
    iput v2, p0, Landroid/support/constraint/motion/MotionLayout;->mListenerState:I

    .line 3701
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mListenerPosition:F

    .line 3702
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListener:Landroid/support/constraint/motion/MotionLayout$TransitionListener;

    if-eqz v2, :cond_56

    .line 3703
    iget v3, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    iget v4, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    invoke-interface {v2, p0, v3, v4, v0}, Landroid/support/constraint/motion/MotionLayout$TransitionListener;->onTransitionChange(Landroid/support/constraint/motion/MotionLayout;IIF)V

    .line 3705
    :cond_56
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_74

    .line 3706
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_74

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/motion/MotionLayout$TransitionListener;

    .line 3707
    iget v3, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    iget v4, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    iget v5, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    invoke-interface {v2, p0, v3, v4, v5}, Landroid/support/constraint/motion/MotionLayout$TransitionListener;->onTransitionChange(Landroid/support/constraint/motion/MotionLayout;IIF)V

    goto :goto_5e

    .line 3710
    :cond_74
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mIsAnimating:Z

    :cond_76
    return-void
.end method

.method private fireTransitionStarted(Landroid/support/constraint/motion/MotionLayout;II)V
    .registers 6

    .line 4014
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListener:Landroid/support/constraint/motion/MotionLayout$TransitionListener;

    if-eqz v0, :cond_7

    .line 4015
    invoke-interface {v0, p0, p2, p3}, Landroid/support/constraint/motion/MotionLayout$TransitionListener;->onTransitionStarted(Landroid/support/constraint/motion/MotionLayout;II)V

    .line 4017
    :cond_7
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1f

    .line 4018
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/motion/MotionLayout$TransitionListener;

    .line 4019
    invoke-interface {v1, p1, p2, p3}, Landroid/support/constraint/motion/MotionLayout$TransitionListener;->onTransitionStarted(Landroid/support/constraint/motion/MotionLayout;II)V

    goto :goto_f

    :cond_1f
    return-void
.end method

.method private handlesTouchEvent(FFLandroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 13

    .line 3378
    instance-of v0, p3, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2a

    .line 3379
    move-object v0, p3

    check-cast v0, Landroid/view/ViewGroup;

    .line 3380
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v3, :cond_2a

    .line 3382
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3383
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, p1

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, p2

    invoke-direct {p0, v6, v7, v5, p4}, Landroid/support/constraint/motion/MotionLayout;->handlesTouchEvent(FFLandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_27

    return v2

    :cond_27
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 3388
    :cond_2a
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, p1

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, p2

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr p1, v5

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr p2, v5

    invoke-virtual {v0, v3, v4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3390
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_64

    .line 3391
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_6b

    .line 3392
    invoke-virtual {p3, p4}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_6b

    return v2

    .line 3397
    :cond_64
    invoke-virtual {p3, p4}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_6b

    return v2

    :cond_6b
    return v1
.end method

.method private init(Landroid/util/AttributeSet;)V
    .registers 11

    .line 3202
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->isInEditMode()Z

    move-result v0

    sput-boolean v0, Landroid/support/constraint/motion/MotionLayout;->IS_IN_EDIT_MODE:Z

    const/4 v0, -0x1

    if-eqz p1, :cond_8b

    .line 3204
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/support/constraint/R$styleable;->MotionLayout:[I

    .line 3205
    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3206
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_1b
    if-ge v4, v1, :cond_78

    .line 3210
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v6

    .line 3211
    sget v7, Landroid/support/constraint/R$styleable;->MotionLayout_layoutDescription:I

    if-ne v6, v7, :cond_35

    .line 3212
    invoke-virtual {p1, v6, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 3213
    new-instance v7, Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8, p0, v6}, Landroid/support/constraint/motion/MotionScene;-><init>(Landroid/content/Context;Landroid/support/constraint/motion/MotionLayout;I)V

    iput-object v7, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    goto :goto_75

    .line 3214
    :cond_35
    sget v7, Landroid/support/constraint/R$styleable;->MotionLayout_currentState:I

    if-ne v6, v7, :cond_40

    .line 3215
    invoke-virtual {p1, v6, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    goto :goto_75

    .line 3216
    :cond_40
    sget v7, Landroid/support/constraint/R$styleable;->MotionLayout_motionProgress:I

    if-ne v6, v7, :cond_4e

    const/4 v7, 0x0

    .line 3217
    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    .line 3218
    iput-boolean v2, p0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    goto :goto_75

    .line 3219
    :cond_4e
    sget v7, Landroid/support/constraint/R$styleable;->MotionLayout_applyMotionScene:I

    if-ne v6, v7, :cond_57

    .line 3220
    invoke-virtual {p1, v6, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    goto :goto_75

    .line 3221
    :cond_57
    sget v7, Landroid/support/constraint/R$styleable;->MotionLayout_showPaths:I

    if-ne v6, v7, :cond_6b

    .line 3222
    iget v7, p0, Landroid/support/constraint/motion/MotionLayout;->mDebugPath:I

    if-nez v7, :cond_75

    .line 3223
    invoke-virtual {p1, v6, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    if-eqz v6, :cond_67

    const/4 v6, 0x2

    goto :goto_68

    :cond_67
    const/4 v6, 0x0

    :goto_68
    iput v6, p0, Landroid/support/constraint/motion/MotionLayout;->mDebugPath:I

    goto :goto_75

    .line 3225
    :cond_6b
    sget v7, Landroid/support/constraint/R$styleable;->MotionLayout_motionDebug:I

    if-ne v6, v7, :cond_75

    .line 3226
    invoke-virtual {p1, v6, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/motion/MotionLayout;->mDebugPath:I

    :cond_75
    :goto_75
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 3229
    :cond_78
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 3230
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez p1, :cond_86

    const-string p1, "MotionLayout"

    const-string v1, "WARNING NO app:layoutDescription tag"

    .line 3231
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_86
    if-nez v5, :cond_8b

    const/4 p1, 0x0

    .line 3234
    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    .line 3237
    :cond_8b
    iget p1, p0, Landroid/support/constraint/motion/MotionLayout;->mDebugPath:I

    if-eqz p1, :cond_92

    .line 3238
    invoke-direct {p0}, Landroid/support/constraint/motion/MotionLayout;->checkStructure()V

    .line 3240
    :cond_92
    iget p1, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    if-ne p1, v0, :cond_b0

    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-eqz p1, :cond_b0

    .line 3241
    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionScene;->getStartId()I

    move-result p1

    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    .line 3242
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionScene;->getStartId()I

    move-result p1

    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    .line 3246
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionScene;->getEndId()I

    move-result p1

    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    :cond_b0
    return-void
.end method

.method private onNewStateAttachHandlers()V
    .registers 3

    .line 3497
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_5

    return-void

    .line 3500
    :cond_5
    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    invoke-virtual {v0, p0, v1}, Landroid/support/constraint/motion/MotionScene;->autoTransition(Landroid/support/constraint/motion/MotionLayout;I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3501
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->requestLayout()V

    return-void

    .line 3504
    :cond_11
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1b

    .line 3505
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v1, p0, v0}, Landroid/support/constraint/motion/MotionScene;->addOnClickListeners(Landroid/support/constraint/motion/MotionLayout;I)V

    .line 3507
    :cond_1b
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene;->supportTouch()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 3508
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene;->setupTouch()V

    :cond_28
    return-void
.end method

.method private processTransitionCompleted()V
    .registers 6

    .line 3737
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListener:Landroid/support/constraint/motion/MotionLayout$TransitionListener;

    if-nez v0, :cond_f

    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    return-void

    :cond_f
    const/4 v0, 0x0

    .line 3740
    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mIsAnimating:Z

    .line 3741
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3742
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListener:Landroid/support/constraint/motion/MotionLayout$TransitionListener;

    if-eqz v2, :cond_2f

    .line 3743
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, p0, v3}, Landroid/support/constraint/motion/MotionLayout$TransitionListener;->onTransitionCompleted(Landroid/support/constraint/motion/MotionLayout;I)V

    .line 3745
    :cond_2f
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_18

    .line 3746
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/motion/MotionLayout$TransitionListener;

    .line 3747
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, p0, v4}, Landroid/support/constraint/motion/MotionLayout$TransitionListener;->onTransitionCompleted(Landroid/support/constraint/motion/MotionLayout;I)V

    goto :goto_37

    .line 3751
    :cond_4b
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private setupMotionViews()V
    .registers 13

    .line 1496
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getChildCount()I

    move-result v0

    .line 1498
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    invoke-virtual {v1}, Landroid/support/constraint/motion/MotionLayout$Model;->build()V

    const/4 v1, 0x1

    .line 1499
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    .line 1501
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getWidth()I

    move-result v8

    .line 1502
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getHeight()I

    move-result v9

    .line 1503
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v2}, Landroid/support/constraint/motion/MotionScene;->gatPathMotionArc()I

    move-result v2

    const/4 v10, 0x0

    const/4 v3, -0x1

    if-eq v2, v3, :cond_35

    const/4 v3, 0x0

    :goto_1f
    if-ge v3, v0, :cond_35

    .line 1506
    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {p0, v3}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/motion/MotionController;

    if-eqz v4, :cond_32

    .line 1508
    invoke-virtual {v4, v2}, Landroid/support/constraint/motion/MotionController;->setPathMotionArc(I)V

    :cond_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :cond_35
    const/4 v11, 0x0

    :goto_36
    if-ge v11, v0, :cond_59

    .line 1514
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {p0, v11}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/motion/MotionController;

    if-eqz v2, :cond_56

    .line 1516
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v3, v2}, Landroid/support/constraint/motion/MotionScene;->getKeyFrames(Landroid/support/constraint/motion/MotionController;)V

    .line 1517
    iget v5, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionDuration:F

    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getNanoTime()J

    move-result-wide v6

    move v3, v8

    move v4, v9

    invoke-virtual/range {v2 .. v7}, Landroid/support/constraint/motion/MotionController;->setup(IIFJ)V

    :cond_56
    add-int/lit8 v11, v11, 0x1

    goto :goto_36

    .line 1521
    :cond_59
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v2}, Landroid/support/constraint/motion/MotionScene;->getStaggered()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_142

    float-to-double v3, v2

    const-wide/16 v5, 0x0

    cmpg-double v7, v3, v5

    if-gez v7, :cond_6d

    const/4 v3, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v3, 0x0

    .line 1525
    :goto_6e
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v4, -0x800001

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v6, 0x0

    const v7, 0x7f7fffff    # Float.MAX_VALUE

    const v8, -0x800001

    :goto_7f
    if-ge v6, v0, :cond_ae

    .line 1528
    iget-object v9, p0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {p0, v6}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/constraint/motion/MotionController;

    .line 1529
    iget v11, v9, Landroid/support/constraint/motion/MotionController;->mMotionStagger:F

    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v11

    if-nez v11, :cond_96

    goto :goto_af

    .line 1533
    :cond_96
    invoke-virtual {v9}, Landroid/support/constraint/motion/MotionController;->getFinalX()F

    move-result v11

    .line 1534
    invoke-virtual {v9}, Landroid/support/constraint/motion/MotionController;->getFinalY()F

    move-result v9

    if-eqz v3, :cond_a2

    sub-float/2addr v9, v11

    goto :goto_a3

    :cond_a2
    add-float/2addr v9, v11

    .line 1536
    :goto_a3
    invoke-static {v7, v9}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 1537
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_7f

    :cond_ae
    const/4 v1, 0x0

    :goto_af
    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v1, :cond_114

    const/4 v1, 0x0

    :goto_b4
    if-ge v1, v0, :cond_d9

    .line 1544
    iget-object v7, p0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/constraint/motion/MotionController;

    .line 1545
    iget v8, v7, Landroid/support/constraint/motion/MotionController;->mMotionStagger:F

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-nez v8, :cond_d6

    .line 1546
    iget v8, v7, Landroid/support/constraint/motion/MotionController;->mMotionStagger:F

    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 1547
    iget v7, v7, Landroid/support/constraint/motion/MotionController;->mMotionStagger:F

    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    :cond_d6
    add-int/lit8 v1, v1, 0x1

    goto :goto_b4

    :cond_d9
    :goto_d9
    if-ge v10, v0, :cond_142

    .line 1551
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {p0, v10}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/motion/MotionController;

    .line 1552
    iget v7, v1, Landroid/support/constraint/motion/MotionController;->mMotionStagger:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_111

    sub-float v7, v6, v2

    div-float v7, v6, v7

    .line 1554
    iput v7, v1, Landroid/support/constraint/motion/MotionController;->mStaggerScale:F

    if-eqz v3, :cond_105

    .line 1556
    iget v7, v1, Landroid/support/constraint/motion/MotionController;->mMotionStagger:F

    sub-float v7, v4, v7

    sub-float v8, v4, v5

    div-float/2addr v7, v8

    mul-float v7, v7, v2

    sub-float v7, v2, v7

    iput v7, v1, Landroid/support/constraint/motion/MotionController;->mStaggerOffset:F

    goto :goto_111

    .line 1558
    :cond_105
    iget v7, v1, Landroid/support/constraint/motion/MotionController;->mMotionStagger:F

    sub-float/2addr v7, v5

    mul-float v7, v7, v2

    sub-float v8, v4, v5

    div-float/2addr v7, v8

    sub-float v7, v2, v7

    iput v7, v1, Landroid/support/constraint/motion/MotionController;->mStaggerOffset:F

    :cond_111
    :goto_111
    add-int/lit8 v10, v10, 0x1

    goto :goto_d9

    :cond_114
    :goto_114
    if-ge v10, v0, :cond_142

    .line 1564
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {p0, v10}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/motion/MotionController;

    .line 1565
    invoke-virtual {v1}, Landroid/support/constraint/motion/MotionController;->getFinalX()F

    move-result v4

    .line 1566
    invoke-virtual {v1}, Landroid/support/constraint/motion/MotionController;->getFinalY()F

    move-result v5

    if-eqz v3, :cond_12e

    sub-float/2addr v5, v4

    goto :goto_12f

    :cond_12e
    add-float/2addr v5, v4

    :goto_12f
    sub-float v4, v6, v2

    div-float v4, v6, v4

    .line 1568
    iput v4, v1, Landroid/support/constraint/motion/MotionController;->mStaggerScale:F

    sub-float/2addr v5, v7

    mul-float v5, v5, v2

    sub-float v4, v8, v7

    div-float/2addr v5, v4

    sub-float v4, v2, v5

    .line 1569
    iput v4, v1, Landroid/support/constraint/motion/MotionController;->mStaggerOffset:F

    add-int/lit8 v10, v10, 0x1

    goto :goto_114

    :cond_142
    return-void
.end method

.method private static willJump(FFF)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    cmpl-float v4, p0, v3

    if-lez v4, :cond_1d

    div-float v3, p0, p2

    mul-float p0, p0, v3

    mul-float p2, p2, v3

    mul-float p2, p2, v3

    div-float/2addr p2, v2

    sub-float/2addr p0, p2

    add-float/2addr p1, p0

    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, p1, p0

    if-lez p0, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    return v0

    :cond_1d
    neg-float v4, p0

    div-float/2addr v4, p2

    mul-float p0, p0, v4

    mul-float p2, p2, v4

    mul-float p2, p2, v4

    div-float/2addr p2, v2

    add-float/2addr p0, p2

    add-float/2addr p1, p0

    cmpg-float p0, p1, v3

    if-gez p0, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v0, 0x0

    :goto_2e
    return v0
.end method


# virtual methods
.method public addTransitionListener(Landroid/support/constraint/motion/MotionLayout$TransitionListener;)V
    .registers 3

    .line 3597
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 3598
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    .line 3600
    :cond_b
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method animateTo(F)V
    .registers 6

    .line 1716
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_5

    return-void

    .line 1720
    :cond_5
    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    iget v2, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_13

    iget-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionInstantly:Z

    if-eqz v1, :cond_13

    .line 1723
    iput v2, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 1726
    :cond_13
    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    cmpl-float v2, v1, p1

    if-nez v2, :cond_1a

    return-void

    :cond_1a
    const/4 v2, 0x0

    .line 1729
    iput-boolean v2, p0, Landroid/support/constraint/motion/MotionLayout;->mTemporalInterpolator:Z

    .line 1731
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    .line 1732
    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene;->getDuration()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p1, v0

    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionDuration:F

    .line 1733
    iget p1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    invoke-virtual {p0, p1}, Landroid/support/constraint/motion/MotionLayout;->setProgress(F)V

    .line 1734
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionScene;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 1735
    iput-boolean v2, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionInstantly:Z

    .line 1736
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getNanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/support/constraint/motion/MotionLayout;->mAnimationStartTime:J

    const/4 p1, 0x1

    .line 1737
    iput-boolean p1, p0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    .line 1738
    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    .line 1742
    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 1743
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->invalidate()V

    return-void
.end method

.method disableAutoTransition(Z)V
    .registers 3

    .line 3983
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_5

    return-void

    .line 3986
    :cond_5
    invoke-virtual {v0, p1}, Landroid/support/constraint/motion/MotionScene;->disableAutoTransition(Z)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 11

    const/4 v0, 0x0

    .line 2878
    invoke-virtual {p0, v0}, Landroid/support/constraint/motion/MotionLayout;->evaluate(Z)V

    .line 2885
    invoke-super {p0, p1}, Landroid/support/constraint/ConstraintLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2886
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v1, :cond_c

    return-void

    .line 2892
    :cond_c
    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mDebugPath:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_d6

    .line 2893
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_d6

    .line 2894
    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mFrames:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mFrames:I

    .line 2895
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getNanoTime()J

    move-result-wide v3

    .line 2896
    iget-wide v5, p0, Landroid/support/constraint/motion/MotionLayout;->mLastDrawTime:J

    const-wide/16 v7, -0x1

    cmp-long v1, v5, v7

    if-eqz v1, :cond_4a

    sub-long v5, v3, v5

    const-wide/32 v7, 0xbebc200

    cmp-long v1, v5, v7

    if-lez v1, :cond_4c

    .line 2899
    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mFrames:I

    int-to-float v1, v1

    long-to-float v5, v5

    const v6, 0x3089705f    # 1.0E-9f

    mul-float v5, v5, v6

    div-float/2addr v1, v5

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float v1, v1, v5

    float-to-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    .line 2900
    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mLastFps:F

    .line 2901
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mFrames:I

    .line 2902
    iput-wide v3, p0, Landroid/support/constraint/motion/MotionLayout;->mLastDrawTime:J

    goto :goto_4c

    .line 2905
    :cond_4a
    iput-wide v3, p0, Landroid/support/constraint/motion/MotionLayout;->mLastDrawTime:J

    .line 2907
    :cond_4c
    :goto_4c
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/high16 v1, 0x42280000    # 42.0f

    .line 2908
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2909
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getProgress()F

    move-result v1

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float v1, v1, v3

    float-to-int v1, v1

    int-to-float v1, v1

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v1, v3

    .line 2910
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Landroid/support/constraint/motion/MotionLayout;->mLastFps:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " fps "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    invoke-static {p0, v5}, Landroid/support/constraint/motion/Debug;->getState(Landroid/support/constraint/motion/MotionLayout;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2911
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    invoke-static {p0, v4}, Landroid/support/constraint/motion/Debug;->getState(Landroid/support/constraint/motion/MotionLayout;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (progress: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " ) state="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_aa

    const-string v1, "undefined"

    goto :goto_ae

    .line 2912
    :cond_aa
    invoke-static {p0, v1}, Landroid/support/constraint/motion/Debug;->getState(Landroid/support/constraint/motion/MotionLayout;I)Ljava/lang/String;

    move-result-object v1

    :goto_ae
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v4, -0x1000000

    .line 2913
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v4, 0x41300000    # 11.0f

    .line 2914
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0x1d

    int-to-float v5, v5

    invoke-virtual {p1, v1, v4, v5, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const v4, -0x77ff78

    .line 2915
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 2916
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getHeight()I

    move-result v4

    add-int/lit8 v4, v4, -0x1e

    int-to-float v4, v4

    invoke-virtual {p1, v1, v3, v4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2920
    :cond_d6
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mDebugPath:I

    if-le v0, v2, :cond_f4

    .line 2921
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mDevModeDraw:Landroid/support/constraint/motion/MotionLayout$DevModeDraw;

    if-nez v0, :cond_e5

    .line 2922
    new-instance v0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;

    invoke-direct {v0, p0}, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;-><init>(Landroid/support/constraint/motion/MotionLayout;)V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mDevModeDraw:Landroid/support/constraint/motion/MotionLayout$DevModeDraw;

    .line 2924
    :cond_e5
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mDevModeDraw:Landroid/support/constraint/motion/MotionLayout$DevModeDraw;

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v2}, Landroid/support/constraint/motion/MotionScene;->getDuration()I

    move-result v2

    iget v3, p0, Landroid/support/constraint/motion/MotionLayout;->mDebugPath:I

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->draw(Landroid/graphics/Canvas;Ljava/util/HashMap;II)V

    :cond_f4
    return-void
.end method

.method public enableTransition(IZ)V
    .registers 5

    .line 996
    invoke-virtual {p0, p1}, Landroid/support/constraint/motion/MotionLayout;->getTransition(I)Landroid/support/constraint/motion/MotionScene$Transition;

    move-result-object p1

    if-eqz p2, :cond_b

    const/4 p2, 0x1

    .line 998
    invoke-virtual {p1, p2}, Landroid/support/constraint/motion/MotionScene$Transition;->setEnable(Z)V

    return-void

    .line 1001
    :cond_b
    iget-object p2, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget-object p2, p2, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-ne p1, p2, :cond_33

    .line 1002
    iget-object p2, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    invoke-virtual {p2, v0}, Landroid/support/constraint/motion/MotionScene;->getTransitionsWithState(I)Ljava/util/List;

    move-result-object p2

    .line 1003
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/motion/MotionScene$Transition;

    .line 1004
    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1005
    iget-object p2, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iput-object v0, p2, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    :cond_33
    const/4 p2, 0x0

    .line 1010
    invoke-virtual {p1, p2}, Landroid/support/constraint/motion/MotionScene$Transition;->setEnable(Z)V

    return-void
.end method

.method evaluate(Z)V
    .registers 21

    move-object/from16 v0, p0

    .line 2980
    iget-wide v1, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastTime:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_10

    .line 2981
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->getNanoTime()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastTime:J

    .line 2983
    :cond_10
    iget v1, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    const/4 v2, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    cmpl-float v5, v1, v4

    if-lez v5, :cond_20

    cmpg-float v5, v1, v3

    if-gez v5, :cond_20

    .line 2984
    iput v2, v0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    .line 2988
    :cond_20
    iget-boolean v5, v0, Landroid/support/constraint/motion/MotionLayout;->mKeepAnimating:Z

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v5, :cond_32

    iget-boolean v5, v0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    if-eqz v5, :cond_203

    if-nez p1, :cond_32

    iget v5, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    cmpl-float v5, v5, v1

    if-eqz v5, :cond_203

    .line 2989
    :cond_32
    iget v5, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    sub-float/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v1

    .line 2990
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->getNanoTime()J

    move-result-wide v8

    .line 2993
    iget-object v5, v0, Landroid/support/constraint/motion/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    instance-of v10, v5, Landroid/support/constraint/motion/MotionInterpolator;

    const v11, 0x3089705f    # 1.0E-9f

    if-nez v10, :cond_55

    .line 2994
    iget-wide v12, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastTime:J

    sub-long v12, v8, v12

    long-to-float v10, v12

    mul-float v10, v10, v1

    mul-float v10, v10, v11

    iget v12, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionDuration:F

    div-float/2addr v10, v12

    .line 2995
    iput v10, v0, Landroid/support/constraint/motion/MotionLayout;->mLastVelocity:F

    goto :goto_56

    :cond_55
    const/4 v10, 0x0

    .line 2997
    :goto_56
    iget v12, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    add-float/2addr v12, v10

    .line 3000
    iget-boolean v13, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionInstantly:Z

    if-eqz v13, :cond_5f

    .line 3001
    iget v12, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    :cond_5f
    cmpl-float v13, v1, v4

    if-lez v13, :cond_69

    .line 3004
    iget v13, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    cmpl-float v13, v12, v13

    if-gez v13, :cond_73

    :cond_69
    cmpg-float v13, v1, v4

    if-gtz v13, :cond_79

    iget v13, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    cmpg-float v13, v12, v13

    if-gtz v13, :cond_79

    .line 3006
    :cond_73
    iget v12, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    .line 3007
    iput-boolean v7, v0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    const/4 v13, 0x1

    goto :goto_7a

    :cond_79
    const/4 v13, 0x0

    .line 3013
    :goto_7a
    iput v12, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 3014
    iput v12, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    .line 3015
    iput-wide v8, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastTime:J

    const v14, 0x3727c5ac    # 1.0E-5f

    if-eqz v5, :cond_f1

    if-nez v13, :cond_f1

    .line 3018
    iget-boolean v13, v0, Landroid/support/constraint/motion/MotionLayout;->mTemporalInterpolator:Z

    if-eqz v13, :cond_d2

    .line 3019
    iget-wide v12, v0, Landroid/support/constraint/motion/MotionLayout;->mAnimationStartTime:J

    sub-long v12, v8, v12

    long-to-float v10, v12

    mul-float v10, v10, v11

    .line 3020
    invoke-interface {v5, v10}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    .line 3024
    iput v5, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 3026
    iput-wide v8, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastTime:J

    .line 3027
    iget-object v8, v0, Landroid/support/constraint/motion/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    instance-of v9, v8, Landroid/support/constraint/motion/MotionInterpolator;

    if-eqz v9, :cond_f0

    .line 3028
    check-cast v8, Landroid/support/constraint/motion/MotionInterpolator;

    invoke-virtual {v8}, Landroid/support/constraint/motion/MotionInterpolator;->getVelocity()F

    move-result v8

    .line 3029
    iput v8, v0, Landroid/support/constraint/motion/MotionLayout;->mLastVelocity:F

    .line 3030
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionDuration:F

    mul-float v9, v9, v10

    cmpg-float v9, v9, v14

    if-gtz v9, :cond_b6

    .line 3031
    iput-boolean v7, v0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    :cond_b6
    cmpl-float v9, v8, v4

    if-lez v9, :cond_c4

    cmpl-float v9, v5, v3

    if-ltz v9, :cond_c4

    .line 3034
    iput v3, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 3035
    iput-boolean v7, v0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    const/high16 v5, 0x3f800000    # 1.0f

    :cond_c4
    cmpg-float v8, v8, v4

    if-gez v8, :cond_f0

    cmpg-float v8, v5, v4

    if-gtz v8, :cond_f0

    .line 3038
    iput v4, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 3039
    iput-boolean v7, v0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    const/4 v12, 0x0

    goto :goto_f1

    .line 3046
    :cond_d2
    invoke-interface {v5, v12}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    .line 3047
    iget-object v8, v0, Landroid/support/constraint/motion/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    instance-of v9, v8, Landroid/support/constraint/motion/MotionInterpolator;

    if-eqz v9, :cond_e5

    .line 3048
    check-cast v8, Landroid/support/constraint/motion/MotionInterpolator;

    invoke-virtual {v8}, Landroid/support/constraint/motion/MotionInterpolator;->getVelocity()F

    move-result v8

    iput v8, v0, Landroid/support/constraint/motion/MotionLayout;->mLastVelocity:F

    goto :goto_f0

    :cond_e5
    add-float/2addr v12, v10

    .line 3050
    invoke-interface {v8, v12}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v8

    sub-float/2addr v8, v5

    mul-float v8, v8, v1

    div-float/2addr v8, v10

    .line 3051
    iput v8, v0, Landroid/support/constraint/motion/MotionLayout;->mLastVelocity:F

    :cond_f0
    :goto_f0
    move v12, v5

    .line 3056
    :cond_f1
    :goto_f1
    iget v5, v0, Landroid/support/constraint/motion/MotionLayout;->mLastVelocity:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v14

    if-lez v5, :cond_100

    .line 3057
    sget-object v5, Landroid/support/constraint/motion/MotionLayout$TransitionState;->MOVING:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {v0, v5}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    :cond_100
    cmpl-float v5, v1, v4

    if-lez v5, :cond_10a

    .line 3060
    iget v5, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    cmpl-float v5, v12, v5

    if-gez v5, :cond_114

    :cond_10a
    cmpg-float v5, v1, v4

    if-gtz v5, :cond_118

    iget v5, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    cmpg-float v5, v12, v5

    if-gtz v5, :cond_118

    .line 3062
    :cond_114
    iget v12, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    .line 3063
    iput-boolean v7, v0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    :cond_118
    cmpl-float v5, v12, v3

    if-gez v5, :cond_120

    cmpg-float v5, v12, v4

    if-gtz v5, :cond_127

    .line 3067
    :cond_120
    iput-boolean v7, v0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    .line 3068
    sget-object v5, Landroid/support/constraint/motion/MotionLayout$TransitionState;->FINISHED:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {v0, v5}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    .line 3071
    :cond_127
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->getChildCount()I

    move-result v5

    .line 3072
    iput-boolean v7, v0, Landroid/support/constraint/motion/MotionLayout;->mKeepAnimating:Z

    .line 3073
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->getNanoTime()J

    move-result-wide v8

    .line 3077
    iput v12, v0, Landroid/support/constraint/motion/MotionLayout;->mPostInterpolationPosition:F

    const/4 v10, 0x0

    :goto_134
    if-ge v10, v5, :cond_158

    .line 3079
    invoke-virtual {v0, v10}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 3080
    iget-object v11, v0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v11, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v13, v11

    check-cast v13, Landroid/support/constraint/motion/MotionController;

    if-eqz v13, :cond_155

    .line 3082
    iget-boolean v11, v0, Landroid/support/constraint/motion/MotionLayout;->mKeepAnimating:Z

    iget-object v15, v0, Landroid/support/constraint/motion/MotionLayout;->mKeyCache:Landroid/support/constraint/motion/KeyCache;

    move-object/from16 v18, v15

    move v15, v12

    move-wide/from16 v16, v8

    invoke-virtual/range {v13 .. v18}, Landroid/support/constraint/motion/MotionController;->interpolate(Landroid/view/View;FJLandroid/support/constraint/motion/KeyCache;)Z

    move-result v13

    or-int/2addr v11, v13

    iput-boolean v11, v0, Landroid/support/constraint/motion/MotionLayout;->mKeepAnimating:Z

    :cond_155
    add-int/lit8 v10, v10, 0x1

    goto :goto_134

    :cond_158
    cmpl-float v5, v1, v4

    if-lez v5, :cond_162

    .line 3090
    iget v5, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    cmpl-float v5, v12, v5

    if-gez v5, :cond_16c

    :cond_162
    cmpg-float v5, v1, v4

    if-gtz v5, :cond_16e

    iget v5, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    cmpg-float v5, v12, v5

    if-gtz v5, :cond_16e

    :cond_16c
    const/4 v5, 0x1

    goto :goto_16f

    :cond_16e
    const/4 v5, 0x0

    .line 3092
    :goto_16f
    iget-boolean v8, v0, Landroid/support/constraint/motion/MotionLayout;->mKeepAnimating:Z

    if-nez v8, :cond_17e

    iget-boolean v8, v0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    if-nez v8, :cond_17e

    if-eqz v5, :cond_17e

    .line 3093
    sget-object v8, Landroid/support/constraint/motion/MotionLayout$TransitionState;->FINISHED:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {v0, v8}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    .line 3095
    :cond_17e
    iget-boolean v8, v0, Landroid/support/constraint/motion/MotionLayout;->mMeasureDuringTransition:Z

    if-eqz v8, :cond_185

    .line 3096
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->requestLayout()V

    .line 3099
    :cond_185
    iget-boolean v8, v0, Landroid/support/constraint/motion/MotionLayout;->mKeepAnimating:Z

    xor-int/2addr v5, v6

    or-int/2addr v5, v8

    iput-boolean v5, v0, Landroid/support/constraint/motion/MotionLayout;->mKeepAnimating:Z

    cmpg-float v5, v12, v4

    if-gtz v5, :cond_1a8

    .line 3102
    iget v5, v0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    if-eq v5, v2, :cond_1a8

    .line 3106
    iget v2, v0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    if-eq v2, v5, :cond_1a8

    .line 3108
    iput v5, v0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    .line 3109
    iget-object v2, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v2, v5}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v2

    .line 3110
    invoke-virtual {v2, v0}, Landroid/support/constraint/ConstraintSet;->applyCustomAttributes(Landroid/support/constraint/ConstraintLayout;)V

    .line 3111
    sget-object v2, Landroid/support/constraint/motion/MotionLayout$TransitionState;->FINISHED:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {v0, v2}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    const/4 v7, 0x1

    :cond_1a8
    float-to-double v8, v12

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v8, v10

    if-ltz v2, :cond_1c6

    .line 3119
    iget v2, v0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    iget v5, v0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    if-eq v2, v5, :cond_1c6

    .line 3121
    iput v5, v0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    .line 3122
    iget-object v2, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v2, v5}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v2

    .line 3123
    invoke-virtual {v2, v0}, Landroid/support/constraint/ConstraintSet;->applyCustomAttributes(Landroid/support/constraint/ConstraintLayout;)V

    .line 3124
    sget-object v2, Landroid/support/constraint/motion/MotionLayout$TransitionState;->FINISHED:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {v0, v2}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    const/4 v7, 0x1

    .line 3128
    :cond_1c6
    iget-boolean v2, v0, Landroid/support/constraint/motion/MotionLayout;->mKeepAnimating:Z

    if-nez v2, :cond_1e5

    iget-boolean v2, v0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    if-eqz v2, :cond_1cf

    goto :goto_1e5

    :cond_1cf
    cmpl-float v2, v1, v4

    if-lez v2, :cond_1d7

    cmpl-float v2, v12, v3

    if-eqz v2, :cond_1df

    :cond_1d7
    cmpg-float v2, v1, v4

    if-gez v2, :cond_1e8

    cmpl-float v2, v12, v4

    if-nez v2, :cond_1e8

    .line 3132
    :cond_1df
    sget-object v2, Landroid/support/constraint/motion/MotionLayout$TransitionState;->FINISHED:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {v0, v2}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    goto :goto_1e8

    .line 3129
    :cond_1e5
    :goto_1e5
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->invalidate()V

    .line 3134
    :cond_1e8
    :goto_1e8
    iget-boolean v2, v0, Landroid/support/constraint/motion/MotionLayout;->mKeepAnimating:Z

    if-nez v2, :cond_1f8

    iget-boolean v2, v0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    if-eqz v2, :cond_1f8

    cmpl-float v2, v1, v4

    if-lez v2, :cond_1f8

    cmpl-float v2, v12, v3

    if-eqz v2, :cond_200

    :cond_1f8
    cmpg-float v1, v1, v4

    if-gez v1, :cond_203

    cmpl-float v1, v12, v4

    if-nez v1, :cond_203

    .line 3135
    :cond_200
    invoke-direct/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->onNewStateAttachHandlers()V

    .line 3138
    :cond_203
    iget v1, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    cmpl-float v2, v1, v3

    if-ltz v2, :cond_215

    .line 3139
    iget v1, v0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    iget v2, v0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    if-eq v1, v2, :cond_210

    goto :goto_211

    :cond_210
    move v6, v7

    .line 3142
    :goto_211
    iput v2, v0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    :goto_213
    move v7, v6

    goto :goto_224

    :cond_215
    cmpg-float v1, v1, v4

    if-gtz v1, :cond_224

    .line 3144
    iget v1, v0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    iget v2, v0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    if-eq v1, v2, :cond_220

    goto :goto_221

    :cond_220
    move v6, v7

    .line 3147
    :goto_221
    iput v2, v0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    goto :goto_213

    .line 3150
    :cond_224
    :goto_224
    iget-boolean v1, v0, Landroid/support/constraint/motion/MotionLayout;->mNeedsFireTransitionCompleted:Z

    or-int/2addr v1, v7

    iput-boolean v1, v0, Landroid/support/constraint/motion/MotionLayout;->mNeedsFireTransitionCompleted:Z

    if-eqz v7, :cond_232

    .line 3152
    iget-boolean v1, v0, Landroid/support/constraint/motion/MotionLayout;->mInLayout:Z

    if-nez v1, :cond_232

    .line 3153
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->requestLayout()V

    .line 3156
    :cond_232
    iget v1, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    iput v1, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    return-void
.end method

.method protected fireTransitionCompleted()V
    .registers 4

    .line 3721
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListener:Landroid/support/constraint/motion/MotionLayout$TransitionListener;

    if-nez v0, :cond_e

    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_42

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_42

    .line 3722
    :cond_e
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mListenerState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_42

    .line 3723
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mListenerState:I

    .line 3725
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    .line 3726
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_33

    :cond_32
    const/4 v0, -0x1

    .line 3728
    :goto_33
    iget v2, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    if-eq v0, v2, :cond_42

    if-eq v2, v1, :cond_42

    .line 3729
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3733
    :cond_42
    invoke-direct {p0}, Landroid/support/constraint/motion/MotionLayout;->processTransitionCompleted()V

    return-void
.end method

.method public fireTrigger(IZF)V
    .registers 6

    .line 3676
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListener:Landroid/support/constraint/motion/MotionLayout$TransitionListener;

    if-eqz v0, :cond_7

    .line 3677
    invoke-interface {v0, p0, p1, p2, p3}, Landroid/support/constraint/motion/MotionLayout$TransitionListener;->onTransitionTrigger(Landroid/support/constraint/motion/MotionLayout;IZF)V

    .line 3679
    :cond_7
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1f

    .line 3680
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/motion/MotionLayout$TransitionListener;

    .line 3681
    invoke-interface {v1, p0, p1, p2, p3}, Landroid/support/constraint/motion/MotionLayout$TransitionListener;->onTransitionTrigger(Landroid/support/constraint/motion/MotionLayout;IZF)V

    goto :goto_f

    :cond_1f
    return-void
.end method

.method getAnchorDpDt(IFFF[F)V
    .registers 8

    .line 3545
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Landroid/support/constraint/motion/MotionLayout;->getViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/motion/MotionController;

    if-eqz v0, :cond_21

    .line 3550
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/support/constraint/motion/MotionController;->getDpDt(FFF[F)V

    .line 3551
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result p1

    .line 3552
    iget p3, p0, Landroid/support/constraint/motion/MotionLayout;->lastPos:F

    sub-float p3, p2, p3

    const/4 p4, 0x0

    cmpl-float p3, p3, p4

    .line 3559
    iput p2, p0, Landroid/support/constraint/motion/MotionLayout;->lastPos:F

    .line 3560
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->lastY:F

    goto :goto_57

    :cond_21
    if-nez v1, :cond_35

    .line 3562
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_41

    .line 3563
    :cond_35
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 3564
    :goto_41
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "WARNING could not find view id "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MotionLayout"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_57
    return-void
.end method

.method public getConstraintSet(I)Landroid/support/constraint/ConstraintSet;
    .registers 3

    .line 3845
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    .line 3848
    :cond_6
    invoke-virtual {v0, p1}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object p1

    return-object p1
.end method

.method public getConstraintSetIds()[I
    .registers 2

    .line 3832
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 3835
    :cond_6
    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene;->getConstraintSetIds()[I

    move-result-object v0

    return-object v0
.end method

.method getConstraintSetNames(I)Ljava/lang/String;
    .registers 3

    .line 3971
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    .line 3974
    :cond_6
    invoke-virtual {v0, p1}, Landroid/support/constraint/motion/MotionScene;->lookUpConstraintName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentState()I
    .registers 2

    .line 3518
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    return v0
.end method

.method public getDebugMode(Z)V
    .registers 2

    if-eqz p1, :cond_4

    const/4 p1, 0x2

    goto :goto_5

    :cond_4
    const/4 p1, 0x1

    .line 3361
    :goto_5
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mDebugPath:I

    .line 3362
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->invalidate()V

    return-void
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

    .line 3897
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 3900
    :cond_6
    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene;->getDefinedTransitions()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getDesignTool()Landroid/support/constraint/motion/DesignTool;
    .registers 2

    .line 3758
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mDesignTool:Landroid/support/constraint/motion/DesignTool;

    if-nez v0, :cond_b

    .line 3759
    new-instance v0, Landroid/support/constraint/motion/DesignTool;

    invoke-direct {v0, p0}, Landroid/support/constraint/motion/DesignTool;-><init>(Landroid/support/constraint/motion/MotionLayout;)V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mDesignTool:Landroid/support/constraint/motion/DesignTool;

    .line 3761
    :cond_b
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mDesignTool:Landroid/support/constraint/motion/DesignTool;

    return-object v0
.end method

.method public getEndState()I
    .registers 2

    .line 3919
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    return v0
.end method

.method protected getNanoTime()J
    .registers 3

    .line 983
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getProgress()F
    .registers 2

    .line 3527
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    return v0
.end method

.method public getStartState()I
    .registers 2

    .line 3910
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    return v0
.end method

.method public getTargetPosition()F
    .registers 2

    .line 3929
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    return v0
.end method

.method public getTransition(I)Landroid/support/constraint/motion/MotionScene$Transition;
    .registers 3

    .line 3947
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v0, p1}, Landroid/support/constraint/motion/MotionScene;->getTransitionById(I)Landroid/support/constraint/motion/MotionScene$Transition;

    move-result-object p1

    return-object p1
.end method

.method public getTransitionState()Landroid/os/Bundle;
    .registers 2

    .line 1434
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    if-nez v0, :cond_b

    .line 1435
    new-instance v0, Landroid/support/constraint/motion/MotionLayout$StateCache;

    invoke-direct {v0, p0}, Landroid/support/constraint/motion/MotionLayout$StateCache;-><init>(Landroid/support/constraint/motion/MotionLayout;)V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    .line 1437
    :cond_b
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionLayout$StateCache;->recordState()V

    .line 1438
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionLayout$StateCache;->getTransitionState()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getTransitionTimeMs()J
    .registers 3

    .line 3574
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    const/high16 v1, 0x447a0000    # 1000.0f

    if-eqz v0, :cond_e

    .line 3575
    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene;->getDuration()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionDuration:F

    .line 3577
    :cond_e
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionDuration:F

    mul-float v0, v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method public getVelocity()F
    .registers 2

    .line 1926
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mLastVelocity:F

    return v0
.end method

.method public getViewVelocity(Landroid/view/View;FF[FI)V
    .registers 14

    .line 1939
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mLastVelocity:F

    .line 1940
    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 1941
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v2, :cond_2d

    const v0, 0x3727c5ac    # 1.0E-5f

    .line 1943
    iget v2, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    sub-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v1

    .line 1944
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    iget v3, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    add-float/2addr v3, v0

    invoke-interface {v2, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 1945
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    iget v4, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    invoke-interface {v3, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v0

    mul-float v1, v1, v2

    .line 1948
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionDuration:F

    div-float v0, v1, v0

    move v2, v3

    goto :goto_2e

    :cond_2d
    move v2, v1

    .line 1951
    :goto_2e
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    instance-of v3, v1, Landroid/support/constraint/motion/MotionInterpolator;

    if-eqz v3, :cond_3a

    .line 1952
    check-cast v1, Landroid/support/constraint/motion/MotionInterpolator;

    invoke-virtual {v1}, Landroid/support/constraint/motion/MotionInterpolator;->getVelocity()F

    move-result v0

    .line 1955
    :cond_3a
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/motion/MotionController;

    and-int/lit8 v3, p5, 0x1

    if-nez v3, :cond_55

    .line 1958
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    move v5, p2

    move v6, p3

    move-object v7, p4

    .line 1957
    invoke-virtual/range {v1 .. v7}, Landroid/support/constraint/motion/MotionController;->getPostLayoutDvDp(FIIFF[F)V

    goto :goto_58

    .line 1961
    :cond_55
    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/support/constraint/motion/MotionController;->getDpDt(FFF[F)V

    :goto_58
    const/4 p1, 0x2

    if-ge p5, p1, :cond_69

    const/4 p1, 0x0

    .line 1964
    aget p2, p4, p1

    mul-float p2, p2, v0

    aput p2, p4, p1

    const/4 p1, 0x1

    .line 1965
    aget p2, p4, p1

    mul-float p2, p2, v0

    aput p2, p4, p1

    :cond_69
    return-void
.end method

.method public isAttachedToWindow()Z
    .registers 3

    .line 1276
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_b

    .line 1277
    invoke-super {p0}, Landroid/support/constraint/ConstraintLayout;->isAttachedToWindow()Z

    move-result v0

    return v0

    .line 1279
    :cond_b
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public isInteractionEnabled()Z
    .registers 2

    .line 4009
    iget-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mInteractionEnabled:Z

    return v0
.end method

.method public loadLayoutDescription(I)V
    .registers 6

    if-eqz p1, :cond_4b

    .line 1256
    :try_start_2
    new-instance v0, Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Landroid/support/constraint/motion/MotionScene;-><init>(Landroid/content/Context;Landroid/support/constraint/motion/MotionLayout;I)V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    .line 1257
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p1, v0, :cond_19

    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_4e

    .line 1258
    :cond_19
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {p1, p0}, Landroid/support/constraint/motion/MotionScene;->readFallback(Landroid/support/constraint/motion/MotionLayout;)V

    .line 1259
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget v2, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    invoke-virtual {v1, v2}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v1

    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget v3, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    invoke-virtual {v2, v3}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/support/constraint/motion/MotionLayout$Model;->initFrom(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/ConstraintSet;Landroid/support/constraint/ConstraintSet;)V

    .line 1260
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->rebuildScene()V

    .line 1261
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->isRtl()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/constraint/motion/MotionScene;->setRtl(Z)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_41} :catch_42

    goto :goto_4e

    :catch_42
    move-exception p1

    .line 1264
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unable to parse MotionScene file"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_4b
    const/4 p1, 0x0

    .line 1267
    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    :cond_4e
    :goto_4e
    return-void
.end method

.method lookUpConstraintId(Ljava/lang/String;)I
    .registers 3

    .line 3958
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 3961
    :cond_6
    invoke-virtual {v0, p1}, Landroid/support/constraint/motion/MotionScene;->lookUpConstraintId(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected obtainVelocityTracker()Landroid/support/constraint/motion/MotionLayout$MotionTracker;
    .registers 2

    .line 992
    invoke-static {}, Landroid/support/constraint/motion/MotionLayout$MyTracker;->obtain()Landroid/support/constraint/motion/MotionLayout$MyTracker;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .line 3470
    invoke-super {p0}, Landroid/support/constraint/ConstraintLayout;->onAttachedToWindow()V

    .line 3471
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-eqz v0, :cond_1e

    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1e

    .line 3472
    invoke-virtual {v0, v1}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v0

    .line 3473
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v1, p0}, Landroid/support/constraint/motion/MotionScene;->readFallback(Landroid/support/constraint/motion/MotionLayout;)V

    if-eqz v0, :cond_1a

    .line 3475
    invoke-virtual {v0, p0}, Landroid/support/constraint/ConstraintSet;->applyTo(Landroid/support/constraint/ConstraintLayout;)V

    .line 3477
    :cond_1a
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    .line 3479
    :cond_1e
    invoke-direct {p0}, Landroid/support/constraint/motion/MotionLayout;->onNewStateAttachHandlers()V

    .line 3480
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    if-eqz v0, :cond_28

    .line 3481
    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionLayout$StateCache;->apply()V

    :cond_28
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 3413
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    const/4 v1, 0x0

    if-eqz v0, :cond_93

    iget-boolean v2, p0, Landroid/support/constraint/motion/MotionLayout;->mInteractionEnabled:Z

    if-nez v2, :cond_b

    goto/16 :goto_93

    .line 3416
    :cond_b
    iget-object v0, v0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-eqz v0, :cond_93

    .line 3417
    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_93

    .line 3418
    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->getTouchResponse()Landroid/support/constraint/motion/TouchResponse;

    move-result-object v0

    if-eqz v0, :cond_93

    .line 3420
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3b

    .line 3421
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, p0, v2}, Landroid/support/constraint/motion/TouchResponse;->getTouchRegion(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v2

    if-eqz v2, :cond_3b

    .line 3423
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-nez v2, :cond_3b

    return v1

    .line 3427
    :cond_3b
    invoke-virtual {v0}, Landroid/support/constraint/motion/TouchResponse;->getTouchRegionId()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_93

    .line 3429
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mRegionView:Landroid/view/View;

    if-eqz v2, :cond_4c

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-eq v2, v0, :cond_52

    .line 3430
    :cond_4c
    invoke-virtual {p0, v0}, Landroid/support/constraint/motion/MotionLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mRegionView:Landroid/view/View;

    .line 3432
    :cond_52
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mRegionView:Landroid/view/View;

    if-eqz v0, :cond_93

    .line 3433
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout;->mRegionView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout;->mRegionView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Landroid/support/constraint/motion/MotionLayout;->mRegionView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3434
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 3437
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mRegionView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v0, p1}, Landroid/support/constraint/motion/MotionLayout;->handlesTouchEvent(FFLandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_93

    .line 3439
    invoke-virtual {p0, p1}, Landroid/support/constraint/motion/MotionLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_93
    :goto_93
    return v1
.end method

.method protected onLayout(ZIIII)V
    .registers 9

    const/4 v0, 0x1

    .line 3163
    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mInLayout:Z

    const/4 v1, 0x0

    .line 3168
    :try_start_4
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v2, :cond_e

    .line 3169
    invoke-super/range {p0 .. p5}, Landroid/support/constraint/ConstraintLayout;->onLayout(ZIIII)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_29

    .line 3187
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mInLayout:Z

    return-void

    :cond_e
    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 3174
    :try_start_10
    iget p1, p0, Landroid/support/constraint/motion/MotionLayout;->mLastLayoutWidth:I

    if-ne p1, p4, :cond_18

    iget p1, p0, Landroid/support/constraint/motion/MotionLayout;->mLastLayoutHeight:I

    if-eq p1, p5, :cond_1e

    .line 3175
    :cond_18
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->rebuildScene()V

    .line 3176
    invoke-virtual {p0, v0}, Landroid/support/constraint/motion/MotionLayout;->evaluate(Z)V

    .line 3182
    :cond_1e
    iput p4, p0, Landroid/support/constraint/motion/MotionLayout;->mLastLayoutWidth:I

    .line 3183
    iput p5, p0, Landroid/support/constraint/motion/MotionLayout;->mLastLayoutHeight:I

    .line 3184
    iput p4, p0, Landroid/support/constraint/motion/MotionLayout;->mOldWidth:I

    .line 3185
    iput p5, p0, Landroid/support/constraint/motion/MotionLayout;->mOldHeight:I
    :try_end_26
    .catchall {:try_start_10 .. :try_end_26} :catchall_29

    .line 3187
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mInLayout:Z

    return-void

    :catchall_29
    move-exception p1

    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mInLayout:Z

    .line 3188
    throw p1
.end method

.method protected onMeasure(II)V
    .registers 9

    .line 2339
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_8

    .line 2340
    invoke-super {p0, p1, p2}, Landroid/support/constraint/ConstraintLayout;->onMeasure(II)V

    return-void

    .line 2343
    :cond_8
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mLastWidthMeasureSpec:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_15

    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mLastHeightMeasureSpec:I

    if-eq v0, p2, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    .line 2344
    :goto_16
    iget-boolean v3, p0, Landroid/support/constraint/motion/MotionLayout;->mNeedsFireTransitionCompleted:Z

    if-eqz v3, :cond_23

    .line 2345
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mNeedsFireTransitionCompleted:Z

    .line 2346
    invoke-direct {p0}, Landroid/support/constraint/motion/MotionLayout;->onNewStateAttachHandlers()V

    .line 2347
    invoke-direct {p0}, Landroid/support/constraint/motion/MotionLayout;->processTransitionCompleted()V

    const/4 v0, 0x1

    .line 2351
    :cond_23
    iget-boolean v3, p0, Landroid/support/constraint/motion/MotionLayout;->mDirtyHierarchy:Z

    if-eqz v3, :cond_28

    const/4 v0, 0x1

    .line 2355
    :cond_28
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mLastWidthMeasureSpec:I

    .line 2356
    iput p2, p0, Landroid/support/constraint/motion/MotionLayout;->mLastHeightMeasureSpec:I

    .line 2358
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v3}, Landroid/support/constraint/motion/MotionScene;->getStartId()I

    move-result v3

    .line 2359
    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v4}, Landroid/support/constraint/motion/MotionScene;->getEndId()I

    move-result v4

    if-nez v0, :cond_42

    .line 2361
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    invoke-virtual {v0, v3, v4}, Landroid/support/constraint/motion/MotionLayout$Model;->isNotConfiguredWith(II)Z

    move-result v0

    if-eqz v0, :cond_68

    :cond_42
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    const/4 v5, -0x1

    if-eq v0, v5, :cond_68

    .line 2362
    invoke-super {p0, p1, p2}, Landroid/support/constraint/ConstraintLayout;->onMeasure(II)V

    .line 2363
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    iget-object p2, p0, Landroid/support/constraint/motion/MotionLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v0, v3}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v0

    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v2, v4}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v2

    invoke-virtual {p1, p2, v0, v2}, Landroid/support/constraint/motion/MotionLayout$Model;->initFrom(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/ConstraintSet;Landroid/support/constraint/ConstraintSet;)V

    .line 2364
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionLayout$Model;->reEvaluateState()V

    .line 2365
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    invoke-virtual {p1, v3, v4}, Landroid/support/constraint/motion/MotionLayout$Model;->setMeasuredId(II)V

    goto :goto_69

    :cond_68
    const/4 v1, 0x1

    .line 2369
    :goto_69
    iget-boolean p1, p0, Landroid/support/constraint/motion/MotionLayout;->mMeasureDuringTransition:Z

    if-nez p1, :cond_6f

    if-eqz v1, :cond_c0

    .line 2370
    :cond_6f
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getPaddingBottom()I

    move-result p2

    add-int/2addr p1, p2

    .line 2371
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getPaddingRight()I

    move-result v0

    add-int/2addr p2, v0

    .line 2372
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v0

    add-int/2addr v0, p2

    .line 2373
    iget-object p2, p0, Landroid/support/constraint/motion/MotionLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result p2

    add-int/2addr p2, p1

    .line 2374
    iget p1, p0, Landroid/support/constraint/motion/MotionLayout;->mWidthMeasureMode:I

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_97

    if-nez p1, :cond_a7

    .line 2375
    :cond_97
    iget p1, p0, Landroid/support/constraint/motion/MotionLayout;->mStartWrapWidth:I

    int-to-float v0, p1

    iget v2, p0, Landroid/support/constraint/motion/MotionLayout;->mPostInterpolationPosition:F

    iget v3, p0, Landroid/support/constraint/motion/MotionLayout;->mEndWrapWidth:I

    sub-int/2addr v3, p1

    int-to-float p1, v3

    mul-float v2, v2, p1

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 2376
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->requestLayout()V

    .line 2378
    :cond_a7
    iget p1, p0, Landroid/support/constraint/motion/MotionLayout;->mHeightMeasureMode:I

    if-eq p1, v1, :cond_ad

    if-nez p1, :cond_bd

    .line 2379
    :cond_ad
    iget p1, p0, Landroid/support/constraint/motion/MotionLayout;->mStartWrapHeight:I

    int-to-float p2, p1

    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mPostInterpolationPosition:F

    iget v2, p0, Landroid/support/constraint/motion/MotionLayout;->mEndWrapHeight:I

    sub-int/2addr v2, p1

    int-to-float p1, v2

    mul-float v1, v1, p1

    add-float/2addr p2, v1

    float-to-int p2, p2

    .line 2380
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->requestLayout()V

    .line 2382
    :cond_bd
    invoke-virtual {p0, v0, p2}, Landroid/support/constraint/motion/MotionLayout;->setMeasuredDimension(II)V

    .line 2384
    :cond_c0
    invoke-direct {p0}, Landroid/support/constraint/motion/MotionLayout;->evaluateLayout()V

    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .registers 5

    const/4 p1, 0x0

    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .registers 15

    .line 2440
    iget-object p5, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-eqz p5, :cond_d2

    iget-object p5, p5, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-nez p5, :cond_a

    goto/16 :goto_d2

    .line 2444
    :cond_a
    iget-object p5, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget-object p5, p5, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-virtual {p5}, Landroid/support/constraint/motion/MotionScene$Transition;->isEnabled()Z

    move-result p5

    if-nez p5, :cond_15

    return-void

    .line 2448
    :cond_15
    iget-object p5, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget-object p5, p5, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    const/4 v0, -0x1

    if-eqz p5, :cond_35

    .line 2449
    invoke-virtual {p5}, Landroid/support/constraint/motion/MotionScene$Transition;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 2450
    invoke-virtual {p5}, Landroid/support/constraint/motion/MotionScene$Transition;->getTouchResponse()Landroid/support/constraint/motion/TouchResponse;

    move-result-object v1

    if-eqz v1, :cond_35

    .line 2452
    invoke-virtual {v1}, Landroid/support/constraint/motion/TouchResponse;->getTouchRegionId()I

    move-result v1

    if-eq v1, v0, :cond_35

    .line 2453
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    if-eq v2, v1, :cond_35

    return-void

    .line 2459
    :cond_35
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v1, :cond_53

    invoke-virtual {v1}, Landroid/support/constraint/motion/MotionScene;->getMoveWhenScrollAtTop()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 2461
    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    cmpl-float v4, v1, v2

    if-eqz v4, :cond_4c

    cmpl-float v1, v1, v3

    if-nez v1, :cond_53

    :cond_4c
    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_53

    return-void

    .line 2467
    :cond_53
    invoke-virtual {p5}, Landroid/support/constraint/motion/MotionScene$Transition;->getTouchResponse()Landroid/support/constraint/motion/TouchResponse;

    move-result-object p5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p5, :cond_96

    iget-object p5, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget-object p5, p5, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-virtual {p5}, Landroid/support/constraint/motion/MotionScene$Transition;->getTouchResponse()Landroid/support/constraint/motion/TouchResponse;

    move-result-object p5

    invoke-virtual {p5}, Landroid/support/constraint/motion/TouchResponse;->getFlags()I

    move-result p5

    and-int/2addr p5, v1

    if-eqz p5, :cond_96

    .line 2468
    iget-object p5, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    int-to-float v4, p2

    int-to-float v5, p3

    invoke-virtual {p5, v4, v5}, Landroid/support/constraint/motion/MotionScene;->getProgressDirection(FF)F

    move-result p5

    .line 2469
    iget v4, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    cmpg-float v5, v4, v3

    if-gtz v5, :cond_7c

    cmpg-float v5, p5, v3

    if-ltz v5, :cond_84

    :cond_7c
    cmpl-float v2, v4, v2

    if-ltz v2, :cond_96

    cmpl-float p5, p5, v3

    if-lez p5, :cond_96

    .line 2471
    :cond_84
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x15

    if-lt p2, p3, :cond_95

    .line 2472
    invoke-virtual {p1, v0}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    .line 2474
    new-instance p2, Landroid/support/constraint/motion/MotionLayout$1;

    invoke-direct {p2, p0, p1}, Landroid/support/constraint/motion/MotionLayout$1;-><init>(Landroid/support/constraint/motion/MotionLayout;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_95
    return-void

    .line 2488
    :cond_96
    iget p1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    .line 2489
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getNanoTime()J

    move-result-wide v2

    int-to-float p5, p2

    .line 2490
    iput p5, p0, Landroid/support/constraint/motion/MotionLayout;->mScrollTargetDX:F

    int-to-float v4, p3

    .line 2491
    iput v4, p0, Landroid/support/constraint/motion/MotionLayout;->mScrollTargetDY:F

    .line 2492
    iget-wide v5, p0, Landroid/support/constraint/motion/MotionLayout;->mScrollTargetTime:J

    sub-long v5, v2, v5

    long-to-double v5, v5

    const-wide v7, 0x3e112e0be826d695L    # 1.0E-9

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v7

    double-to-float v5, v5

    iput v5, p0, Landroid/support/constraint/motion/MotionLayout;->mScrollTargetDT:F

    .line 2493
    iput-wide v2, p0, Landroid/support/constraint/motion/MotionLayout;->mScrollTargetTime:J

    .line 2497
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v2, p5, v4}, Landroid/support/constraint/motion/MotionScene;->processScrollMove(FF)V

    .line 2498
    iget p5, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    cmpl-float p1, p1, p5

    if-eqz p1, :cond_c5

    .line 2499
    aput p2, p4, v0

    .line 2500
    aput p3, p4, v1

    .line 2502
    :cond_c5
    invoke-virtual {p0, v0}, Landroid/support/constraint/motion/MotionLayout;->evaluate(Z)V

    .line 2503
    aget p1, p4, v0

    if-nez p1, :cond_d0

    aget p1, p4, v1

    if-eqz p1, :cond_d2

    .line 2504
    :cond_d0
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mUndergoingMotion:Z

    :cond_d2
    :goto_d2
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .registers 7

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .registers 5

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 3

    .line 3487
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-eqz p1, :cond_b

    .line 3488
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->isRtl()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/constraint/motion/MotionScene;->setRtl(Z)V

    :cond_b
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .registers 5

    .line 2392
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-eqz p1, :cond_25

    iget-object p1, p1, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-eqz p1, :cond_25

    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget-object p1, p1, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    .line 2394
    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionScene$Transition;->getTouchResponse()Landroid/support/constraint/motion/TouchResponse;

    move-result-object p1

    if-eqz p1, :cond_25

    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget-object p1, p1, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    .line 2395
    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionScene$Transition;->getTouchResponse()Landroid/support/constraint/motion/TouchResponse;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/constraint/motion/TouchResponse;->getFlags()I

    move-result p1

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_23

    goto :goto_25

    :cond_23
    const/4 p1, 0x1

    return p1

    :cond_25
    :goto_25
    const/4 p1, 0x0

    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .registers 5

    .line 2415
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez p1, :cond_5

    return-void

    .line 2418
    :cond_5
    iget p2, p0, Landroid/support/constraint/motion/MotionLayout;->mScrollTargetDX:F

    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScrollTargetDT:F

    div-float/2addr p2, v0

    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mScrollTargetDY:F

    div-float/2addr v1, v0

    invoke-virtual {p1, p2, v1}, Landroid/support/constraint/motion/MotionScene;->processScrollUp(FF)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 3454
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-eqz v0, :cond_2a

    iget-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mInteractionEnabled:Z

    if-eqz v1, :cond_2a

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene;->supportTouch()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 3455
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget-object v0, v0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-eqz v0, :cond_1f

    .line 3456
    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 3457
    invoke-super {p0, p1}, Landroid/support/constraint/ConstraintLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 3459
    :cond_1f
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getCurrentState()I

    move-result v1

    invoke-virtual {v0, p1, v1, p0}, Landroid/support/constraint/motion/MotionScene;->processTouchEvent(Landroid/view/MotionEvent;ILandroid/support/constraint/motion/MotionLayout;)V

    const/4 p1, 0x1

    return p1

    .line 3465
    :cond_2a
    invoke-super {p0, p1}, Landroid/support/constraint/ConstraintLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onViewAdded(Landroid/view/View;)V
    .registers 3

    .line 3769
    invoke-super {p0, p1}, Landroid/support/constraint/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    .line 3770
    instance-of v0, p1, Landroid/support/constraint/motion/MotionHelper;

    if-eqz v0, :cond_45

    .line 3771
    check-cast p1, Landroid/support/constraint/motion/MotionHelper;

    .line 3772
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_14

    .line 3773
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    .line 3775
    :cond_14
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3777
    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionHelper;->isUsedOnShow()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 3778
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    if-nez v0, :cond_2a

    .line 3779
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    .line 3781
    :cond_2a
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3783
    :cond_2f
    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionHelper;->isUseOnHide()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 3784
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    if-nez v0, :cond_40

    .line 3785
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    .line 3787
    :cond_40
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_45
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .registers 3

    .line 3797
    invoke-super {p0, p1}, Landroid/support/constraint/ConstraintLayout;->onViewRemoved(Landroid/view/View;)V

    .line 3798
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    .line 3799
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3801
    :cond_a
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    if-eqz v0, :cond_11

    .line 3802
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_11
    return-void
.end method

.method protected parseLayoutDescription(I)V
    .registers 2

    const/4 p1, 0x0

    .line 3198
    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mConstraintLayoutSpec:Landroid/support/constraint/ConstraintLayoutStates;

    return-void
.end method

.method public rebuildMotion()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "MotionLayout"

    const-string v1, "This method is deprecated. Please call rebuildScene() instead."

    .line 3858
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3859
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->rebuildScene()V

    return-void
.end method

.method public rebuildScene()V
    .registers 2

    .line 3866
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionLayout$Model;->reEvaluateState()V

    .line 3867
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->invalidate()V

    return-void
.end method

.method public removeTransitionListener(Landroid/support/constraint/motion/MotionLayout$TransitionListener;)Z
    .registers 3

    .line 3611
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 3614
    :cond_6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public requestLayout()V
    .registers 3

    .line 2317
    iget-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mMeasureDuringTransition:Z

    if-nez v0, :cond_1c

    .line 2318
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1c

    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-eqz v0, :cond_1c

    iget-object v0, v0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget-object v0, v0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    .line 2320
    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->getLayoutDuringTransition()I

    move-result v0

    if-nez v0, :cond_1c

    return-void

    .line 2324
    :cond_1c
    invoke-super {p0}, Landroid/support/constraint/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setDebugMode(I)V
    .registers 2

    .line 3348
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mDebugPath:I

    .line 3349
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->invalidate()V

    return-void
.end method

.method public setInteractionEnabled(Z)V
    .registers 2

    .line 3996
    iput-boolean p1, p0, Landroid/support/constraint/motion/MotionLayout;->mInteractionEnabled:Z

    return-void
.end method

.method public setInterpolatedProgress(F)V
    .registers 3

    .line 1309
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-eqz v0, :cond_19

    .line 1310
    sget-object v0, Landroid/support/constraint/motion/MotionLayout$TransitionState;->MOVING:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    .line 1311
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 1313
    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/constraint/motion/MotionLayout;->setProgress(F)V

    return-void

    .line 1317
    :cond_19
    invoke-virtual {p0, p1}, Landroid/support/constraint/motion/MotionLayout;->setProgress(F)V

    return-void
.end method

.method public setOnHide(F)V
    .registers 5

    .line 3817
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    if-eqz v0, :cond_19

    .line 3818
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_19

    .line 3820
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/motion/MotionHelper;

    .line 3821
    invoke-virtual {v2, p1}, Landroid/support/constraint/motion/MotionHelper;->setProgress(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_19
    return-void
.end method

.method public setOnShow(F)V
    .registers 5

    .line 3807
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    if-eqz v0, :cond_19

    .line 3808
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_19

    .line 3810
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/motion/MotionHelper;

    .line 3811
    invoke-virtual {v2, p1}, Landroid/support/constraint/motion/MotionHelper;->setProgress(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_19
    return-void
.end method

.method public setProgress(F)V
    .registers 5

    .line 1447
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_17

    .line 1448
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    if-nez v0, :cond_11

    .line 1449
    new-instance v0, Landroid/support/constraint/motion/MotionLayout$StateCache;

    invoke-direct {v0, p0}, Landroid/support/constraint/motion/MotionLayout$StateCache;-><init>(Landroid/support/constraint/motion/MotionLayout;)V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    .line 1451
    :cond_11
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    invoke-virtual {v0, p1}, Landroid/support/constraint/motion/MotionLayout$StateCache;->setProgress(F)V

    return-void

    :cond_17
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_2c

    .line 1462
    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    .line 1463
    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_4a

    .line 1464
    sget-object v0, Landroid/support/constraint/motion/MotionLayout$TransitionState;->FINISHED:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    goto :goto_4a

    :cond_2c
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_42

    .line 1467
    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    .line 1468
    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_4a

    .line 1469
    sget-object v0, Landroid/support/constraint/motion/MotionLayout$TransitionState;->FINISHED:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    goto :goto_4a

    :cond_42
    const/4 v0, -0x1

    .line 1472
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    .line 1473
    sget-object v0, Landroid/support/constraint/motion/MotionLayout$TransitionState;->MOVING:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    .line 1477
    :cond_4a
    :goto_4a
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_4f

    return-void

    :cond_4f
    const/4 v0, 0x1

    .line 1481
    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionInstantly:Z

    .line 1482
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    .line 1483
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    const-wide/16 v1, -0x1

    .line 1484
    iput-wide v1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastTime:J

    .line 1485
    iput-wide v1, p0, Landroid/support/constraint/motion/MotionLayout;->mAnimationStartTime:J

    const/4 p1, 0x0

    .line 1486
    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 1488
    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    .line 1489
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->invalidate()V

    return-void
.end method

.method public setProgress(FF)V
    .registers 4

    .line 1327
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1328
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    if-nez v0, :cond_11

    .line 1329
    new-instance v0, Landroid/support/constraint/motion/MotionLayout$StateCache;

    invoke-direct {v0, p0}, Landroid/support/constraint/motion/MotionLayout$StateCache;-><init>(Landroid/support/constraint/motion/MotionLayout;)V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    .line 1331
    :cond_11
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    invoke-virtual {v0, p1}, Landroid/support/constraint/motion/MotionLayout$StateCache;->setProgress(F)V

    .line 1332
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    invoke-virtual {p1, p2}, Landroid/support/constraint/motion/MotionLayout$StateCache;->setVelocity(F)V

    return-void

    .line 1335
    :cond_1c
    invoke-virtual {p0, p1}, Landroid/support/constraint/motion/MotionLayout;->setProgress(F)V

    .line 1336
    sget-object p1, Landroid/support/constraint/motion/MotionLayout$TransitionState;->MOVING:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {p0, p1}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    .line 1337
    iput p2, p0, Landroid/support/constraint/motion/MotionLayout;->mLastVelocity:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 1338
    invoke-virtual {p0, p1}, Landroid/support/constraint/motion/MotionLayout;->animateTo(F)V

    return-void
.end method

.method public setScene(Landroid/support/constraint/motion/MotionScene;)V
    .registers 3

    .line 3257
    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    .line 3258
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->isRtl()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/constraint/motion/MotionScene;->setRtl(Z)V

    .line 3259
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->rebuildScene()V

    return-void
.end method

.method public setState(III)V
    .registers 5

    .line 1292
    sget-object v0, Landroid/support/constraint/motion/MotionLayout$TransitionState;->SETUP:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    .line 1293
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    const/4 v0, -0x1

    .line 1294
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    .line 1295
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    .line 1296
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mConstraintLayoutSpec:Landroid/support/constraint/ConstraintLayoutStates;

    if-eqz v0, :cond_18

    .line 1297
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mConstraintLayoutSpec:Landroid/support/constraint/ConstraintLayoutStates;

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/constraint/ConstraintLayoutStates;->updateConstraints(IFF)V

    goto :goto_23

    .line 1298
    :cond_18
    iget-object p2, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-eqz p2, :cond_23

    .line 1299
    invoke-virtual {p2, p1}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/support/constraint/ConstraintSet;->applyTo(Landroid/support/constraint/ConstraintLayout;)V

    :cond_23
    :goto_23
    return-void
.end method

.method setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V
    .registers 4

    .line 1040
    sget-object v0, Landroid/support/constraint/motion/MotionLayout$TransitionState;->FINISHED:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    if-ne p1, v0, :cond_a

    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    return-void

    .line 1043
    :cond_a
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionState:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    .line 1044
    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionState:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    .line 1046
    sget-object v1, Landroid/support/constraint/motion/MotionLayout$TransitionState;->MOVING:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    if-ne v0, v1, :cond_19

    sget-object v1, Landroid/support/constraint/motion/MotionLayout$TransitionState;->MOVING:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    if-ne p1, v1, :cond_19

    .line 1047
    invoke-direct {p0}, Landroid/support/constraint/motion/MotionLayout;->fireTransitionChange()V

    .line 1049
    :cond_19
    sget-object v1, Landroid/support/constraint/motion/MotionLayout$2;->$SwitchMap$android$support$constraint$motion$MotionLayout$TransitionState:[I

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionLayout$TransitionState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_33

    const/4 v1, 0x2

    if-eq v0, v1, :cond_33

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2b

    goto :goto_41

    .line 1060
    :cond_2b
    sget-object v0, Landroid/support/constraint/motion/MotionLayout$TransitionState;->FINISHED:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    if-ne p1, v0, :cond_41

    .line 1061
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->fireTransitionCompleted()V

    goto :goto_41

    .line 1052
    :cond_33
    sget-object v0, Landroid/support/constraint/motion/MotionLayout$TransitionState;->MOVING:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    if-ne p1, v0, :cond_3a

    .line 1053
    invoke-direct {p0}, Landroid/support/constraint/motion/MotionLayout;->fireTransitionChange()V

    .line 1055
    :cond_3a
    sget-object v0, Landroid/support/constraint/motion/MotionLayout$TransitionState;->FINISHED:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    if-ne p1, v0, :cond_41

    .line 1056
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->fireTransitionCompleted()V

    :cond_41
    :goto_41
    return-void
.end method

.method public setTransition(I)V
    .registers 8

    .line 1166
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-eqz v0, :cond_95

    .line 1167
    invoke-virtual {p0, p1}, Landroid/support/constraint/motion/MotionLayout;->getTransition(I)Landroid/support/constraint/motion/MotionScene$Transition;

    move-result-object p1

    .line 1169
    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionScene$Transition;->getStartConstraintSetId()I

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    .line 1170
    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionScene$Transition;->getEndConstraintSetId()I

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    .line 1172
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_34

    .line 1173
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    if-nez p1, :cond_25

    .line 1174
    new-instance p1, Landroid/support/constraint/motion/MotionLayout$StateCache;

    invoke-direct {p1, p0}, Landroid/support/constraint/motion/MotionLayout$StateCache;-><init>(Landroid/support/constraint/motion/MotionLayout;)V

    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    .line 1176
    :cond_25
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    invoke-virtual {p1, v0}, Landroid/support/constraint/motion/MotionLayout$StateCache;->setStartState(I)V

    .line 1177
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    invoke-virtual {p1, v0}, Landroid/support/constraint/motion/MotionLayout$StateCache;->setEndState(I)V

    return-void

    :cond_34
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 1189
    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    iget v2, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3f

    const/4 v0, 0x0

    goto :goto_45

    .line 1191
    :cond_3f
    iget v2, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    if-ne v1, v2, :cond_45

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1194
    :cond_45
    :goto_45
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v1, p1}, Landroid/support/constraint/motion/MotionScene;->setTransition(Landroid/support/constraint/motion/MotionScene$Transition;)V

    .line 1195
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget v4, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    invoke-virtual {v2, v4}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v2

    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget v5, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    invoke-virtual {v4, v5}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v4

    invoke-virtual {p1, v1, v2, v4}, Landroid/support/constraint/motion/MotionLayout$Model;->initFrom(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/ConstraintSet;Landroid/support/constraint/ConstraintSet;)V

    .line 1196
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->rebuildScene()V

    .line 1198
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_6b

    goto :goto_6c

    :cond_6b
    move v3, v0

    :goto_6c
    iput v3, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 1200
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_92

    .line 1201
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/support/constraint/motion/Debug;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " transitionToStart "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MotionLayout"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->transitionToStart()V

    goto :goto_95

    .line 1204
    :cond_92
    invoke-virtual {p0, v0}, Landroid/support/constraint/motion/MotionLayout;->setProgress(F)V

    :cond_95
    :goto_95
    return-void
.end method

.method public setTransition(II)V
    .registers 6

    .line 1134
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1135
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    if-nez v0, :cond_11

    .line 1136
    new-instance v0, Landroid/support/constraint/motion/MotionLayout$StateCache;

    invoke-direct {v0, p0}, Landroid/support/constraint/motion/MotionLayout$StateCache;-><init>(Landroid/support/constraint/motion/MotionLayout;)V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    .line 1138
    :cond_11
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    invoke-virtual {v0, p1}, Landroid/support/constraint/motion/MotionLayout$StateCache;->setStartState(I)V

    .line 1139
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    invoke-virtual {p1, p2}, Landroid/support/constraint/motion/MotionLayout$StateCache;->setEndState(I)V

    return-void

    .line 1143
    :cond_1c
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-eqz v0, :cond_43

    .line 1144
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    .line 1145
    iput p2, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    .line 1151
    invoke-virtual {v0, p1, p2}, Landroid/support/constraint/motion/MotionScene;->setTransition(II)V

    .line 1152
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v2, p1}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object p1

    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v2, p2}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/constraint/motion/MotionLayout$Model;->initFrom(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/ConstraintSet;Landroid/support/constraint/ConstraintSet;)V

    .line 1153
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->rebuildScene()V

    const/4 p1, 0x0

    .line 1154
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 1155
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->transitionToStart()V

    :cond_43
    return-void
.end method

.method protected setTransition(Landroid/support/constraint/motion/MotionScene$Transition;)V
    .registers 6

    .line 1210
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v0, p1}, Landroid/support/constraint/motion/MotionScene;->setTransition(Landroid/support/constraint/motion/MotionScene$Transition;)V

    .line 1212
    sget-object v0, Landroid/support/constraint/motion/MotionLayout$TransitionState;->SETUP:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    .line 1213
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v1}, Landroid/support/constraint/motion/MotionScene;->getEndId()I

    move-result v1

    if-ne v0, v1, :cond_1d

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1214
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 1215
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    .line 1216
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    goto :goto_24

    :cond_1d
    const/4 v0, 0x0

    .line 1218
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 1219
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    .line 1220
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    :goto_24
    const/4 v0, 0x1

    .line 1222
    invoke-virtual {p1, v0}, Landroid/support/constraint/motion/MotionScene$Transition;->isTransitionFlag(I)Z

    move-result p1

    if-eqz p1, :cond_2e

    const-wide/16 v0, -0x1

    goto :goto_32

    :cond_2e
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getNanoTime()J

    move-result-wide v0

    :goto_32
    iput-wide v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastTime:J

    .line 1227
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionScene;->getStartId()I

    move-result p1

    .line 1228
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene;->getEndId()I

    move-result v0

    .line 1229
    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    if-ne p1, v1, :cond_49

    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    if-ne v0, v1, :cond_49

    return-void

    .line 1232
    :cond_49
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    .line 1233
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    .line 1234
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v1, p1, v0}, Landroid/support/constraint/motion/MotionScene;->setTransition(II)V

    .line 1240
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget v2, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    invoke-virtual {v1, v2}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v1

    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget v3, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    invoke-virtual {v2, v3}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/support/constraint/motion/MotionLayout$Model;->initFrom(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/ConstraintSet;Landroid/support/constraint/ConstraintSet;)V

    .line 1241
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    invoke-virtual {p1, v0, v1}, Landroid/support/constraint/motion/MotionLayout$Model;->setMeasuredId(II)V

    .line 1242
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionLayout$Model;->reEvaluateState()V

    .line 1244
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->rebuildScene()V

    return-void
.end method

.method public setTransitionDuration(I)V
    .registers 3

    .line 3933
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_c

    const-string p1, "MotionLayout"

    const-string v0, "MotionScene not defined"

    .line 3934
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3937
    :cond_c
    invoke-virtual {v0, p1}, Landroid/support/constraint/motion/MotionScene;->setDuration(I)V

    return-void
.end method

.method public setTransitionListener(Landroid/support/constraint/motion/MotionLayout$TransitionListener;)V
    .registers 2

    .line 3587
    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListener:Landroid/support/constraint/motion/MotionLayout$TransitionListener;

    return-void
.end method

.method public setTransitionState(Landroid/os/Bundle;)V
    .registers 3

    .line 1421
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    if-nez v0, :cond_b

    .line 1422
    new-instance v0, Landroid/support/constraint/motion/MotionLayout$StateCache;

    invoke-direct {v0, p0}, Landroid/support/constraint/motion/MotionLayout$StateCache;-><init>(Landroid/support/constraint/motion/MotionLayout;)V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    .line 1424
    :cond_b
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    invoke-virtual {v0, p1}, Landroid/support/constraint/motion/MotionLayout$StateCache;->setTransitionState(Landroid/os/Bundle;)V

    .line 1425
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 1426
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionLayout$StateCache;->apply()V

    :cond_1b
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 2329
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    invoke-static {v0, v2}, Landroid/support/constraint/motion/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    .line 2331
    invoke-static {v0, v2}, Landroid/support/constraint/motion/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (pos:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " Dpos/Dt:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mLastVelocity:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public touchAnimateTo(IFF)V
    .registers 14

    .line 1594
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_5

    return-void

    .line 1597
    :cond_5
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_c

    return-void

    :cond_c
    const/4 v0, 0x1

    .line 1601
    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTemporalInterpolator:Z

    .line 1602
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getNanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/support/constraint/motion/MotionLayout;->mAnimationStartTime:J

    .line 1603
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v1}, Landroid/support/constraint/motion/MotionScene;->getDuration()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float v7, v1, v2

    iput v7, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionDuration:F

    .line 1605
    iput p2, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    .line 1606
    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p1, :cond_8c

    if-eq p1, v0, :cond_8c

    if-eq p1, v2, :cond_8c

    const/4 v0, 0x4

    if-eq p1, v0, :cond_7a

    const/4 v0, 0x5

    if-eq p1, v0, :cond_36

    goto/16 :goto_b3

    .line 1636
    :cond_36
    iget p1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene;->getMaxAcceleration()F

    move-result v0

    invoke-static {p3, p1, v0}, Landroid/support/constraint/motion/MotionLayout;->willJump(FFF)Z

    move-result p1

    if-eqz p1, :cond_56

    .line 1637
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mDecelerateLogic:Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;

    iget p2, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene;->getMaxAcceleration()F

    move-result v0

    invoke-virtual {p1, p3, p2, v0}, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;->config(FFF)V

    .line 1638
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mDecelerateLogic:Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;

    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_b3

    .line 1640
    :cond_56
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mStopLogic:Landroid/support/constraint/motion/utils/StopLogic;

    iget v3, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    iget v6, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionDuration:F

    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    .line 1641
    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionScene;->getMaxAcceleration()F

    move-result v7

    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionScene;->getMaxVelocity()F

    move-result v8

    move v4, p2

    move v5, p3

    .line 1640
    invoke-virtual/range {v2 .. v8}, Landroid/support/constraint/motion/utils/StopLogic;->config(FFFFFF)V

    .line 1642
    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mLastVelocity:F

    .line 1643
    iget p1, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    .line 1644
    iput p2, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    .line 1645
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    .line 1646
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mStopLogic:Landroid/support/constraint/motion/utils/StopLogic;

    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_b3

    .line 1631
    :cond_7a
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mDecelerateLogic:Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;

    iget p2, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene;->getMaxAcceleration()F

    move-result v0

    invoke-virtual {p1, p3, p2, v0}, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;->config(FFF)V

    .line 1632
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mDecelerateLogic:Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;

    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_b3

    :cond_8c
    if-ne p1, v0, :cond_90

    const/4 p2, 0x0

    goto :goto_94

    :cond_90
    if-ne p1, v2, :cond_94

    const/high16 p2, 0x3f800000    # 1.0f

    .line 1617
    :cond_94
    :goto_94
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout;->mStopLogic:Landroid/support/constraint/motion/utils/StopLogic;

    iget v4, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    .line 1618
    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionScene;->getMaxAcceleration()F

    move-result v8

    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionScene;->getMaxVelocity()F

    move-result v9

    move v5, p2

    move v6, p3

    .line 1617
    invoke-virtual/range {v3 .. v9}, Landroid/support/constraint/motion/utils/StopLogic;->config(FFFFFF)V

    .line 1620
    iget p1, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    .line 1621
    iput p2, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    .line 1622
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    .line 1623
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mStopLogic:Landroid/support/constraint/motion/utils/StopLogic;

    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    :goto_b3
    const/4 p1, 0x0

    .line 1652
    iput-boolean p1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionInstantly:Z

    .line 1653
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getNanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Landroid/support/constraint/motion/MotionLayout;->mAnimationStartTime:J

    .line 1654
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->invalidate()V

    return-void
.end method

.method public transitionToEnd()V
    .registers 2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1773
    invoke-virtual {p0, v0}, Landroid/support/constraint/motion/MotionLayout;->animateTo(F)V

    return-void
.end method

.method public transitionToStart()V
    .registers 2

    const/4 v0, 0x0

    .line 1764
    invoke-virtual {p0, v0}, Landroid/support/constraint/motion/MotionLayout;->animateTo(F)V

    return-void
.end method

.method public transitionToState(I)V
    .registers 3

    .line 1783
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_17

    .line 1784
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    if-nez v0, :cond_11

    .line 1785
    new-instance v0, Landroid/support/constraint/motion/MotionLayout$StateCache;

    invoke-direct {v0, p0}, Landroid/support/constraint/motion/MotionLayout$StateCache;-><init>(Landroid/support/constraint/motion/MotionLayout;)V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    .line 1787
    :cond_11
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    invoke-virtual {v0, p1}, Landroid/support/constraint/motion/MotionLayout$StateCache;->setEndState(I)V

    return-void

    :cond_17
    const/4 v0, -0x1

    .line 1790
    invoke-virtual {p0, p1, v0, v0}, Landroid/support/constraint/motion/MotionLayout;->transitionToState(III)V

    return-void
.end method

.method public transitionToState(III)V
    .registers 15

    .line 1811
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    const/4 v1, -0x1

    if-eqz v0, :cond_18

    iget-object v0, v0, Landroid/support/constraint/motion/MotionScene;->mStateSet:Landroid/support/constraint/StateSet;

    if-eqz v0, :cond_18

    .line 1812
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget-object v0, v0, Landroid/support/constraint/motion/MotionScene;->mStateSet:Landroid/support/constraint/StateSet;

    iget v2, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-virtual {v0, v2, p1, p2, p3}, Landroid/support/constraint/StateSet;->convertToConstraintSet(IIFF)I

    move-result p2

    if-eq p2, v1, :cond_18

    move p1, p2

    .line 1823
    :cond_18
    iget p2, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    if-ne p2, p1, :cond_1d

    return-void

    .line 1826
    :cond_1d
    iget p3, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    const/4 v0, 0x0

    if-ne p3, p1, :cond_26

    .line 1827
    invoke-virtual {p0, v0}, Landroid/support/constraint/motion/MotionLayout;->animateTo(F)V

    return-void

    .line 1830
    :cond_26
    iget p3, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    const/high16 v2, 0x3f800000    # 1.0f

    if-ne p3, p1, :cond_30

    .line 1831
    invoke-virtual {p0, v2}, Landroid/support/constraint/motion/MotionLayout;->animateTo(F)V

    return-void

    .line 1834
    :cond_30
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    if-eq p2, v1, :cond_40

    .line 1843
    invoke-virtual {p0, p2, p1}, Landroid/support/constraint/motion/MotionLayout;->setTransition(II)V

    .line 1844
    invoke-virtual {p0, v2}, Landroid/support/constraint/motion/MotionLayout;->animateTo(F)V

    .line 1846
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 1847
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->transitionToEnd()V

    return-void

    :cond_40
    const/4 p2, 0x0

    .line 1856
    iput-boolean p2, p0, Landroid/support/constraint/motion/MotionLayout;->mTemporalInterpolator:Z

    .line 1857
    iput v2, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    .line 1858
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    .line 1859
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 1860
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getNanoTime()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastTime:J

    .line 1861
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getNanoTime()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/support/constraint/motion/MotionLayout;->mAnimationStartTime:J

    .line 1862
    iput-boolean p2, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionInstantly:Z

    const/4 p3, 0x0

    .line 1863
    iput-object p3, p0, Landroid/support/constraint/motion/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 1864
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v3}, Landroid/support/constraint/motion/MotionScene;->getDuration()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    iput v3, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionDuration:F

    .line 1865
    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    .line 1866
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget v4, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    invoke-virtual {v3, v1, v4}, Landroid/support/constraint/motion/MotionScene;->setTransition(II)V

    .line 1868
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v1}, Landroid/support/constraint/motion/MotionScene;->getStartId()I

    .line 1870
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getChildCount()I

    move-result v1

    .line 1871
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    const/4 v3, 0x0

    :goto_7e
    if-ge v3, v1, :cond_91

    .line 1873
    invoke-virtual {p0, v3}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1874
    new-instance v5, Landroid/support/constraint/motion/MotionController;

    invoke-direct {v5, v4}, Landroid/support/constraint/motion/MotionController;-><init>(Landroid/view/View;)V

    .line 1875
    iget-object v6, p0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_7e

    :cond_91
    const/4 v3, 0x1

    .line 1877
    iput-boolean v3, p0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    .line 1879
    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    iget-object v5, p0, Landroid/support/constraint/motion/MotionLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v6, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v6, p1}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object p1

    invoke-virtual {v4, v5, p3, p1}, Landroid/support/constraint/motion/MotionLayout$Model;->initFrom(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/ConstraintSet;Landroid/support/constraint/ConstraintSet;)V

    .line 1880
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->rebuildScene()V

    .line 1881
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionLayout$Model;->build()V

    .line 1882
    invoke-direct {p0}, Landroid/support/constraint/motion/MotionLayout;->computeCurrentPositions()V

    .line 1883
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getWidth()I

    move-result p1

    .line 1884
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getHeight()I

    move-result p3

    const/4 v10, 0x0

    :goto_b5
    if-ge v10, v1, :cond_d6

    .line 1887
    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {p0, v10}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/motion/MotionController;

    .line 1888
    iget-object v5, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v5, v4}, Landroid/support/constraint/motion/MotionScene;->getKeyFrames(Landroid/support/constraint/motion/MotionController;)V

    .line 1889
    iget v7, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionDuration:F

    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getNanoTime()J

    move-result-wide v8

    move v5, p1

    move v6, p3

    invoke-virtual/range {v4 .. v9}, Landroid/support/constraint/motion/MotionController;->setup(IIFJ)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_b5

    .line 1892
    :cond_d6
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionScene;->getStaggered()F

    move-result p1

    cmpl-float p3, p1, v0

    if-eqz p3, :cond_133

    const p3, 0x7f7fffff    # Float.MAX_VALUE

    const v4, -0x800001

    const/4 v5, 0x0

    :goto_e7
    if-ge v5, v1, :cond_109

    .line 1897
    iget-object v6, p0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {p0, v5}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/constraint/motion/MotionController;

    .line 1898
    invoke-virtual {v6}, Landroid/support/constraint/motion/MotionController;->getFinalX()F

    move-result v7

    .line 1899
    invoke-virtual {v6}, Landroid/support/constraint/motion/MotionController;->getFinalY()F

    move-result v6

    add-float/2addr v6, v7

    .line 1900
    invoke-static {p3, v6}, Ljava/lang/Math;->min(FF)F

    move-result p3

    .line 1901
    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_e7

    :cond_109
    :goto_109
    if-ge p2, v1, :cond_133

    .line 1905
    iget-object v5, p0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/motion/MotionController;

    .line 1906
    invoke-virtual {v5}, Landroid/support/constraint/motion/MotionController;->getFinalX()F

    move-result v6

    .line 1907
    invoke-virtual {v5}, Landroid/support/constraint/motion/MotionController;->getFinalY()F

    move-result v7

    sub-float v8, v2, p1

    div-float v8, v2, v8

    .line 1908
    iput v8, v5, Landroid/support/constraint/motion/MotionController;->mStaggerScale:F

    add-float/2addr v6, v7

    sub-float/2addr v6, p3

    mul-float v6, v6, p1

    sub-float v7, v4, p3

    div-float/2addr v6, v7

    sub-float v6, p1, v6

    .line 1909
    iput v6, v5, Landroid/support/constraint/motion/MotionController;->mStaggerOffset:F

    add-int/lit8 p2, p2, 0x1

    goto :goto_109

    .line 1913
    :cond_133
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    .line 1914
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 1915
    iput-boolean v3, p0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    .line 1917
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->invalidate()V

    return-void
.end method

.method public updateState()V
    .registers 6

    .line 3887
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget v3, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    invoke-virtual {v2, v3}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v2

    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget v4, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    invoke-virtual {v3, v4}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/constraint/motion/MotionLayout$Model;->initFrom(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/ConstraintSet;Landroid/support/constraint/ConstraintSet;)V

    .line 3888
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->rebuildScene()V

    return-void
.end method

.method public updateState(ILandroid/support/constraint/ConstraintSet;)V
    .registers 4

    .line 3877
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-eqz v0, :cond_7

    .line 3878
    invoke-virtual {v0, p1, p2}, Landroid/support/constraint/motion/MotionScene;->setConstraintSet(ILandroid/support/constraint/ConstraintSet;)V

    .line 3880
    :cond_7
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->updateState()V

    .line 3881
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    if-ne v0, p1, :cond_11

    .line 3882
    invoke-virtual {p2, p0}, Landroid/support/constraint/ConstraintSet;->applyTo(Landroid/support/constraint/ConstraintLayout;)V

    :cond_11
    return-void
.end method
