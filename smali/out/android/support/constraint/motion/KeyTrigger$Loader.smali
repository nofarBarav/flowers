.class Landroid/support/constraint/motion/KeyTrigger$Loader;
.super Ljava/lang/Object;
.source "KeyTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/motion/KeyTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Loader"
.end annotation


# static fields
.field private static final COLLISION:I = 0x9

.field private static final CROSS:I = 0x4

.field private static final FRAME_POS:I = 0x8

.field private static final NEGATIVE_CROSS:I = 0x1

.field private static final POSITIVE_CROSS:I = 0x2

.field private static final POST_LAYOUT:I = 0xa

.field private static final TARGET_ID:I = 0x7

.field private static final TRIGGER_ID:I = 0x6

.field private static final TRIGGER_RECEIVER:I = 0xb

.field private static final TRIGGER_SLACK:I = 0x5

.field private static mAttrMap:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 262
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/support/constraint/motion/KeyTrigger$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 265
    sget v1, Landroid/support/constraint/R$styleable;->KeyTrigger_framePosition:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 266
    sget-object v0, Landroid/support/constraint/motion/KeyTrigger$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyTrigger_onCross:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 267
    sget-object v0, Landroid/support/constraint/motion/KeyTrigger$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyTrigger_onNegativeCross:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 268
    sget-object v0, Landroid/support/constraint/motion/KeyTrigger$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyTrigger_onPositiveCross:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 269
    sget-object v0, Landroid/support/constraint/motion/KeyTrigger$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyTrigger_motionTarget:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 270
    sget-object v0, Landroid/support/constraint/motion/KeyTrigger$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyTrigger_triggerId:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 271
    sget-object v0, Landroid/support/constraint/motion/KeyTrigger$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyTrigger_triggerSlack:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 272
    sget-object v0, Landroid/support/constraint/motion/KeyTrigger$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyTrigger_motion_triggerOnCollision:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 273
    sget-object v0, Landroid/support/constraint/motion/KeyTrigger$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyTrigger_motion_postLayoutCollision:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 274
    sget-object v0, Landroid/support/constraint/motion/KeyTrigger$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyTrigger_triggerReceiver:I

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroid/support/constraint/motion/KeyTrigger;Landroid/content/res/TypedArray;Landroid/content/Context;)V
    .registers 7

    .line 278
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v0, 0x0

    :goto_5
    if-ge v0, p2, :cond_de

    .line 280
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 281
    sget-object v2, Landroid/support/constraint/motion/KeyTrigger$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    packed-switch v2, :pswitch_data_e0

    :pswitch_14
    goto/16 :goto_b2

    .line 322
    :pswitch_16
    invoke-static {p0}, Landroid/support/constraint/motion/KeyTrigger;->access$700(Landroid/support/constraint/motion/KeyTrigger;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-static {p0, v2}, Landroid/support/constraint/motion/KeyTrigger;->access$702(Landroid/support/constraint/motion/KeyTrigger;I)I

    goto/16 :goto_b2

    .line 319
    :pswitch_23
    invoke-static {p0}, Landroid/support/constraint/motion/KeyTrigger;->access$600(Landroid/support/constraint/motion/KeyTrigger;)Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-static {p0, v1}, Landroid/support/constraint/motion/KeyTrigger;->access$602(Landroid/support/constraint/motion/KeyTrigger;Z)Z

    goto/16 :goto_da

    .line 316
    :pswitch_30
    invoke-static {p0}, Landroid/support/constraint/motion/KeyTrigger;->access$500(Landroid/support/constraint/motion/KeyTrigger;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {p0, v1}, Landroid/support/constraint/motion/KeyTrigger;->access$502(Landroid/support/constraint/motion/KeyTrigger;I)I

    goto/16 :goto_da

    .line 283
    :pswitch_3d
    iget v2, p0, Landroid/support/constraint/motion/KeyTrigger;->mFramePosition:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Landroid/support/constraint/motion/KeyTrigger;->mFramePosition:I

    .line 284
    iget v1, p0, Landroid/support/constraint/motion/KeyTrigger;->mFramePosition:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-static {p0, v1}, Landroid/support/constraint/motion/KeyTrigger;->access$002(Landroid/support/constraint/motion/KeyTrigger;F)F

    goto/16 :goto_da

    .line 287
    :pswitch_53
    sget-boolean v2, Landroid/support/constraint/motion/MotionLayout;->IS_IN_EDIT_MODE:Z

    if-eqz v2, :cond_6c

    .line 288
    iget v2, p0, Landroid/support/constraint/motion/KeyTrigger;->mTargetId:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroid/support/constraint/motion/KeyTrigger;->mTargetId:I

    .line 289
    iget v2, p0, Landroid/support/constraint/motion/KeyTrigger;->mTargetId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_da

    .line 290
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/support/constraint/motion/KeyTrigger;->mTargetString:Ljava/lang/String;

    goto/16 :goto_da

    .line 293
    :cond_6c
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    iget v2, v2, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_7c

    .line 294
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/support/constraint/motion/KeyTrigger;->mTargetString:Ljava/lang/String;

    goto :goto_da

    .line 296
    :cond_7c
    iget v2, p0, Landroid/support/constraint/motion/KeyTrigger;->mTargetId:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/constraint/motion/KeyTrigger;->mTargetId:I

    goto :goto_da

    .line 313
    :pswitch_85
    invoke-static {p0}, Landroid/support/constraint/motion/KeyTrigger;->access$400(Landroid/support/constraint/motion/KeyTrigger;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {p0, v1}, Landroid/support/constraint/motion/KeyTrigger;->access$402(Landroid/support/constraint/motion/KeyTrigger;I)I

    goto :goto_da

    .line 310
    :pswitch_91
    iget v2, p0, Landroid/support/constraint/motion/KeyTrigger;->mTriggerSlack:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/support/constraint/motion/KeyTrigger;->mTriggerSlack:F

    goto :goto_da

    .line 307
    :pswitch_9a
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/support/constraint/motion/KeyTrigger;->access$302(Landroid/support/constraint/motion/KeyTrigger;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_da

    .line 304
    :pswitch_a2
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/support/constraint/motion/KeyTrigger;->access$202(Landroid/support/constraint/motion/KeyTrigger;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_da

    .line 301
    :pswitch_aa
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/support/constraint/motion/KeyTrigger;->access$102(Landroid/support/constraint/motion/KeyTrigger;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_da

    .line 324
    :goto_b2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unused attribute 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/support/constraint/motion/KeyTrigger$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyTrigger"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_da
    :goto_da
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5

    :cond_de
    return-void

    nop

    :pswitch_data_e0
    .packed-switch 0x1
        :pswitch_aa
        :pswitch_a2
        :pswitch_14
        :pswitch_9a
        :pswitch_91
        :pswitch_85
        :pswitch_53
        :pswitch_3d
        :pswitch_30
        :pswitch_23
        :pswitch_16
    .end packed-switch
.end method
