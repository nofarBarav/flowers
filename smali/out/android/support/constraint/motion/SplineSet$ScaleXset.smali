.class Landroid/support/constraint/motion/SplineSet$ScaleXset;
.super Landroid/support/constraint/motion/SplineSet;
.source "SplineSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/motion/SplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScaleXset"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 217
    invoke-direct {p0}, Landroid/support/constraint/motion/SplineSet;-><init>()V

    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;F)V
    .registers 3

    .line 220
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/SplineSet$ScaleXset;->get(F)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    return-void
.end method
