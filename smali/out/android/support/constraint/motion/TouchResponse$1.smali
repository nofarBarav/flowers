.class Landroid/support/constraint/motion/TouchResponse$1;
.super Ljava/lang/Object;
.source "TouchResponse.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/constraint/motion/TouchResponse;->setupTouch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/constraint/motion/TouchResponse;


# direct methods
.method constructor <init>(Landroid/support/constraint/motion/TouchResponse;)V
    .registers 2

    .line 410
    iput-object p1, p0, Landroid/support/constraint/motion/TouchResponse$1;->this$0:Landroid/support/constraint/motion/TouchResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method
