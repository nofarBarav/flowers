.class Landroid/support/constraint/motion/TimeCycleSplineSet$RotationSet;
.super Landroid/support/constraint/motion/TimeCycleSplineSet;
.source "TimeCycleSplineSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/motion/TimeCycleSplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RotationSet"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 237
    invoke-direct {p0}, Landroid/support/constraint/motion/TimeCycleSplineSet;-><init>()V

    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;FJLandroid/support/constraint/motion/KeyCache;)Z
    .registers 12

    move-object v0, p0

    move v1, p2

    move-wide v2, p3

    move-object v4, p1

    move-object v5, p5

    .line 240
    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/motion/TimeCycleSplineSet$RotationSet;->get(FJLandroid/view/View;Landroid/support/constraint/motion/KeyCache;)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setRotation(F)V

    .line 241
    iget-boolean p1, p0, Landroid/support/constraint/motion/TimeCycleSplineSet$RotationSet;->mContinue:Z

    return p1
.end method
