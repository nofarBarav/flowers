.class Landroid/support/constraint/motion/TimeCycleSplineSet$ProgressSet;
.super Landroid/support/constraint/motion/TimeCycleSplineSet;
.source "TimeCycleSplineSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/motion/TimeCycleSplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProgressSet"
.end annotation


# instance fields
.field mNoMethod:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .line 381
    invoke-direct {p0}, Landroid/support/constraint/motion/TimeCycleSplineSet;-><init>()V

    const/4 v0, 0x0

    .line 382
    iput-boolean v0, p0, Landroid/support/constraint/motion/TimeCycleSplineSet$ProgressSet;->mNoMethod:Z

    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;FJLandroid/support/constraint/motion/KeyCache;)Z
    .registers 19

    move-object v7, p0

    move-object v0, p1

    const-string v8, "unable to setProgress"

    const-string v9, "SplineSet"

    .line 386
    instance-of v1, v0, Landroid/support/constraint/motion/MotionLayout;

    if-eqz v1, :cond_1c

    .line 387
    move-object v8, v0

    check-cast v8, Landroid/support/constraint/motion/MotionLayout;

    move-object v1, p0

    move v2, p2

    move-wide/from16 v3, p3

    move-object v5, p1

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/support/constraint/motion/TimeCycleSplineSet$ProgressSet;->get(FJLandroid/view/View;Landroid/support/constraint/motion/KeyCache;)F

    move-result v0

    invoke-virtual {v8, v0}, Landroid/support/constraint/motion/MotionLayout;->setProgress(F)V

    goto :goto_5a

    .line 389
    :cond_1c
    iget-boolean v1, v7, Landroid/support/constraint/motion/TimeCycleSplineSet$ProgressSet;->mNoMethod:Z

    const/4 v10, 0x0

    if-eqz v1, :cond_22

    return v10

    :cond_22
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 394
    :try_start_24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "setProgress"

    new-array v5, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v10

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_34
    .catch Ljava/lang/NoSuchMethodException; {:try_start_24 .. :try_end_34} :catch_35

    goto :goto_37

    .line 396
    :catch_35
    iput-boolean v2, v7, Landroid/support/constraint/motion/TimeCycleSplineSet$ProgressSet;->mNoMethod:Z

    :goto_37
    move-object v11, v1

    if-eqz v11, :cond_5a

    :try_start_3a
    new-array v12, v2, [Ljava/lang/Object;

    move-object v1, p0

    move v2, p2

    move-wide/from16 v3, p3

    move-object v5, p1

    move-object/from16 v6, p5

    .line 400
    invoke-virtual/range {v1 .. v6}, Landroid/support/constraint/motion/TimeCycleSplineSet$ProgressSet;->get(FJLandroid/view/View;Landroid/support/constraint/motion/KeyCache;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v12, v10

    invoke-virtual {v11, p1, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_50
    .catch Ljava/lang/IllegalAccessException; {:try_start_3a .. :try_end_50} :catch_56
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3a .. :try_end_50} :catch_51

    goto :goto_5a

    :catch_51
    move-exception v0

    .line 404
    invoke-static {v9, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5a

    :catch_56
    move-exception v0

    .line 402
    invoke-static {v9, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 408
    :cond_5a
    :goto_5a
    iget-boolean v0, v7, Landroid/support/constraint/motion/TimeCycleSplineSet$ProgressSet;->mContinue:Z

    return v0
.end method
