.class Landroid/support/constraint/motion/MotionLayout$MyTracker;
.super Ljava/lang/Object;
.source "MotionLayout.java"

# interfaces
.implements Landroid/support/constraint/motion/MotionLayout$MotionTracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/motion/MotionLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyTracker"
.end annotation


# static fields
.field private static me:Landroid/support/constraint/motion/MotionLayout$MyTracker;


# instance fields
.field tracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1071
    new-instance v0, Landroid/support/constraint/motion/MotionLayout$MyTracker;

    invoke-direct {v0}, Landroid/support/constraint/motion/MotionLayout$MyTracker;-><init>()V

    sput-object v0, Landroid/support/constraint/motion/MotionLayout$MyTracker;->me:Landroid/support/constraint/motion/MotionLayout$MyTracker;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1069
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain()Landroid/support/constraint/motion/MotionLayout$MyTracker;
    .registers 2

    .line 1074
    sget-object v0, Landroid/support/constraint/motion/MotionLayout$MyTracker;->me:Landroid/support/constraint/motion/MotionLayout$MyTracker;

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, v0, Landroid/support/constraint/motion/MotionLayout$MyTracker;->tracker:Landroid/view/VelocityTracker;

    .line 1075
    sget-object v0, Landroid/support/constraint/motion/MotionLayout$MyTracker;->me:Landroid/support/constraint/motion/MotionLayout$MyTracker;

    return-object v0
.end method


# virtual methods
.method public addMovement(Landroid/view/MotionEvent;)V
    .registers 3

    .line 1091
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$MyTracker;->tracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_7

    .line 1092
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_7
    return-void
.end method

.method public clear()V
    .registers 2

    .line 1086
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$MyTracker;->tracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    return-void
.end method

.method public computeCurrentVelocity(I)V
    .registers 3

    .line 1098
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$MyTracker;->tracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    return-void
.end method

.method public computeCurrentVelocity(IF)V
    .registers 4

    .line 1103
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$MyTracker;->tracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1, p2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    return-void
.end method

.method public getXVelocity()F
    .registers 2

    .line 1108
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$MyTracker;->tracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    return v0
.end method

.method public getXVelocity(I)F
    .registers 3

    .line 1118
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$MyTracker;->tracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result p1

    return p1
.end method

.method public getYVelocity()F
    .registers 2

    .line 1113
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$MyTracker;->tracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    return v0
.end method

.method public getYVelocity(I)F
    .registers 2

    .line 1123
    invoke-virtual {p0, p1}, Landroid/support/constraint/motion/MotionLayout$MyTracker;->getYVelocity(I)F

    move-result p1

    return p1
.end method

.method public recycle()V
    .registers 2

    .line 1080
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$MyTracker;->tracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 1081
    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout$MyTracker;->tracker:Landroid/view/VelocityTracker;

    return-void
.end method
