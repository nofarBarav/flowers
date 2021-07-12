.class Landroid/support/v7/app/AppCompatDelegateImpl;
.super Landroid/support/v7/app/AppCompatDelegate;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuBuilder$Callback;
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;,
        Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;,
        Landroid/support/v7/app/AppCompatDelegateImpl$AppCompatWindowCallback;,
        Landroid/support/v7/app/AppCompatDelegateImpl$ListMenuDecorView;,
        Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;,
        Landroid/support/v7/app/AppCompatDelegateImpl$ActionMenuPresenterCallback;,
        Landroid/support/v7/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;,
        Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final EXCEPTION_HANDLER_MESSAGE_SUFFIX:Ljava/lang/String; = ". If the resource you are trying to use is a vector resource, you may be referencing it in an unsupported way. See AppCompatDelegate.setCompatVectorFromResourcesEnabled() for more info."

.field private static final IS_PRE_LOLLIPOP:Z

.field private static final KEY_LOCAL_NIGHT_MODE:Ljava/lang/String; = "appcompat:local_night_mode"

.field private static sInstalledExceptionHandler:Z

.field private static final sWindowBackgroundStyleable:[I


# instance fields
.field mActionBar:Landroid/support/v7/app/ActionBar;

.field private mActionMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImpl$ActionMenuPresenterCallback;

.field mActionMode:Landroid/support/v7/view/ActionMode;

.field mActionModePopup:Landroid/widget/PopupWindow;

.field mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

.field final mAppCompatCallback:Landroid/support/v7/app/AppCompatCallback;

.field private mAppCompatViewInflater:Landroid/support/v7/app/AppCompatViewInflater;

.field final mAppCompatWindowCallback:Landroid/view/Window$Callback;

.field private mApplyDayNightCalled:Z

.field private mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;

.field private mClosingActionMenu:Z

.field final mContext:Landroid/content/Context;

.field private mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

.field private mEnableDefaultActionBarUp:Z

.field mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field private mFeatureIndeterminateProgress:Z

.field private mFeatureProgress:Z

.field private mHandleNativeActionModes:Z

.field mHasActionBar:Z

.field mInvalidatePanelMenuFeatures:I

.field mInvalidatePanelMenuPosted:Z

.field private final mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

.field mIsDestroyed:Z

.field mIsFloating:Z

.field private mLocalNightMode:I

.field private mLongPressBackDown:Z

.field mMenuInflater:Landroid/view/MenuInflater;

.field final mOriginalWindowCallback:Landroid/view/Window$Callback;

.field mOverlayActionBar:Z

.field mOverlayActionMode:Z

.field private mPanelMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;

.field private mPanels:[Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

.field private mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

.field mShowActionModePopup:Ljava/lang/Runnable;

.field private mStatusGuard:Landroid/view/View;

.field private mSubDecor:Landroid/view/ViewGroup;

.field private mSubDecorInstalled:Z

.field private mTempRect1:Landroid/graphics/Rect;

.field private mTempRect2:Landroid/graphics/Rect;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;

.field final mWindow:Landroid/view/Window;

.field mWindowNoTitle:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 116
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x15

    if-ge v0, v3, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    sput-boolean v0, Landroid/support/v7/app/AppCompatDelegateImpl;->IS_PRE_LOLLIPOP:Z

    new-array v3, v2, [I

    const v4, 0x1010054

    aput v4, v3, v1

    .line 119
    sput-object v3, Landroid/support/v7/app/AppCompatDelegateImpl;->sWindowBackgroundStyleable:[I

    if-eqz v0, :cond_2a

    .line 128
    sget-boolean v0, Landroid/support/v7/app/AppCompatDelegateImpl;->sInstalledExceptionHandler:Z

    if-nez v0, :cond_2a

    .line 130
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 132
    new-instance v1, Landroid/support/v7/app/AppCompatDelegateImpl$1;

    invoke-direct {v1, v0}, Landroid/support/v7/app/AppCompatDelegateImpl$1;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 157
    sput-boolean v2, Landroid/support/v7/app/AppCompatDelegateImpl;->sInstalledExceptionHandler:Z

    :cond_2a
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V
    .registers 6

    .line 244
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegate;-><init>()V

    const/4 v0, 0x0

    .line 180
    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v1, 0x1

    .line 182
    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mHandleNativeActionModes:Z

    const/16 v1, -0x64

    .line 215
    iput v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mLocalNightMode:I

    .line 223
    new-instance v1, Landroid/support/v7/app/AppCompatDelegateImpl$2;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AppCompatDelegateImpl$2;-><init>(Landroid/support/v7/app/AppCompatDelegateImpl;)V

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    .line 245
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    .line 246
    iput-object p2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    .line 247
    iput-object p3, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mAppCompatCallback:Landroid/support/v7/app/AppCompatCallback;

    .line 249
    invoke-virtual {p2}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p3

    iput-object p3, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    .line 250
    instance-of v1, p3, Landroid/support/v7/app/AppCompatDelegateImpl$AppCompatWindowCallback;

    if-nez v1, :cond_42

    .line 254
    new-instance v1, Landroid/support/v7/app/AppCompatDelegateImpl$AppCompatWindowCallback;

    invoke-direct {v1, p0, p3}, Landroid/support/v7/app/AppCompatDelegateImpl$AppCompatWindowCallback;-><init>(Landroid/support/v7/app/AppCompatDelegateImpl;Landroid/view/Window$Callback;)V

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mAppCompatWindowCallback:Landroid/view/Window$Callback;

    .line 256
    invoke-virtual {p2, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 258
    sget-object p3, Landroid/support/v7/app/AppCompatDelegateImpl;->sWindowBackgroundStyleable:[I

    invoke-static {p1, v0, p3}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/support/v7/widget/TintTypedArray;

    move-result-object p1

    const/4 p3, 0x0

    .line 260
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/TintTypedArray;->getDrawableIfKnown(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_3e

    .line 262
    invoke-virtual {p2, p3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 264
    :cond_3e
    invoke-virtual {p1}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    return-void

    .line 251
    :cond_42
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "AppCompat has already installed itself into the Window"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private applyFixedSizeWindow()V
    .registers 6

    .line 731
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mSubDecor:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ContentFrameLayout;

    .line 737
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 738
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 739
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    .line 740
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 738
    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/support/v7/widget/ContentFrameLayout;->setDecorPadding(IIII)V

    .line 742
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 743
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowMinWidthMajor:I

    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getMinWidthMajor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 744
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowMinWidthMinor:I

    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getMinWidthMinor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 746
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMajor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 747
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMajor:I

    .line 748
    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedWidthMajor()Landroid/util/TypedValue;

    move-result-object v3

    .line 747
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 750
    :cond_4f
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMinor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 751
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMinor:I

    .line 752
    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedWidthMinor()Landroid/util/TypedValue;

    move-result-object v3

    .line 751
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 754
    :cond_60
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMajor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 755
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMajor:I

    .line 756
    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedHeightMajor()Landroid/util/TypedValue;

    move-result-object v3

    .line 755
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 758
    :cond_71
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMinor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 759
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMinor:I

    .line 760
    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedHeightMinor()Landroid/util/TypedValue;

    move-result-object v3

    .line 759
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 762
    :cond_82
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 764
    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->requestLayout()V

    return-void
.end method

.method private createSubDecor()Landroid/view/ViewGroup;
    .registers 8

    .line 551
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 553
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowActionBar:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_19f

    .line 559
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowNoTitle:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1e

    .line 560
    invoke-virtual {p0, v3}, Landroid/support/v7/app/AppCompatDelegateImpl;->requestWindowFeature(I)Z

    goto :goto_2b

    .line 561
    :cond_1e
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowActionBar:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_2b

    const/16 v1, 0x6c

    .line 563
    invoke-virtual {p0, v1}, Landroid/support/v7/app/AppCompatDelegateImpl;->requestWindowFeature(I)Z

    .line 565
    :cond_2b
    :goto_2b
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowActionBarOverlay:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/16 v4, 0x6d

    if-eqz v1, :cond_38

    .line 566
    invoke-virtual {p0, v4}, Landroid/support/v7/app/AppCompatDelegateImpl;->requestWindowFeature(I)Z

    .line 568
    :cond_38
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowActionModeOverlay:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_45

    const/16 v1, 0xa

    .line 569
    invoke-virtual {p0, v1}, Landroid/support/v7/app/AppCompatDelegateImpl;->requestWindowFeature(I)Z

    .line 571
    :cond_45
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_android_windowIsFloating:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mIsFloating:Z

    .line 572
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 575
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 577
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 581
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mWindowNoTitle:Z

    const/4 v5, 0x0

    if-nez v1, :cond_d3

    .line 582
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mIsFloating:Z

    if-eqz v1, :cond_72

    .line 584
    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_dialog_title_material:I

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 588
    iput-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mOverlayActionBar:Z

    iput-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mHasActionBar:Z

    goto/16 :goto_102

    .line 589
    :cond_72
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mHasActionBar:Z

    if-eqz v0, :cond_d1

    .line 595
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 596
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v6, Landroid/support/v7/appcompat/R$attr;->actionBarTheme:I

    invoke-virtual {v1, v6, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 599
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_94

    .line 600
    new-instance v1, Landroid/support/v7/view/ContextThemeWrapper;

    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v1, v3, v0}, Landroid/support/v7/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    goto :goto_96

    .line 602
    :cond_94
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    .line 606
    :goto_96
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_screen_toolbar:I

    .line 607
    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 609
    sget v1, Landroid/support/v7/appcompat/R$id;->decor_content_parent:I

    .line 610
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/DecorContentParent;

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    .line 611
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/support/v7/widget/DecorContentParent;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 616
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mOverlayActionBar:Z

    if-eqz v1, :cond_bc

    .line 617
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v1, v4}, Landroid/support/v7/widget/DecorContentParent;->initFeature(I)V

    .line 619
    :cond_bc
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mFeatureProgress:Z

    if-eqz v1, :cond_c6

    .line 620
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/support/v7/widget/DecorContentParent;->initFeature(I)V

    .line 622
    :cond_c6
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mFeatureIndeterminateProgress:Z

    if-eqz v1, :cond_102

    .line 623
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    const/4 v3, 0x5

    invoke-interface {v1, v3}, Landroid/support/v7/widget/DecorContentParent;->initFeature(I)V

    goto :goto_102

    :cond_d1
    move-object v0, v5

    goto :goto_102

    .line 627
    :cond_d3
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mOverlayActionMode:Z

    if-eqz v1, :cond_e0

    .line 628
    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_screen_simple_overlay_action_mode:I

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_e8

    .line 631
    :cond_e0
    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_screen_simple:I

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 634
    :goto_e8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_f7

    .line 637
    new-instance v1, Landroid/support/v7/app/AppCompatDelegateImpl$3;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AppCompatDelegateImpl$3;-><init>(Landroid/support/v7/app/AppCompatDelegateImpl;)V

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    goto :goto_102

    .line 659
    :cond_f7
    move-object v1, v0

    check-cast v1, Landroid/support/v7/widget/FitWindowsViewGroup;

    new-instance v3, Landroid/support/v7/app/AppCompatDelegateImpl$4;

    invoke-direct {v3, p0}, Landroid/support/v7/app/AppCompatDelegateImpl$4;-><init>(Landroid/support/v7/app/AppCompatDelegateImpl;)V

    invoke-interface {v1, v3}, Landroid/support/v7/widget/FitWindowsViewGroup;->setOnFitSystemWindowsListener(Landroid/support/v7/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;)V

    :cond_102
    :goto_102
    if-eqz v0, :cond_159

    .line 680
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-nez v1, :cond_112

    .line 681
    sget v1, Landroid/support/v7/appcompat/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mTitleView:Landroid/widget/TextView;

    .line 685
    :cond_112
    invoke-static {v0}, Landroid/support/v7/widget/ViewUtils;->makeOptionalFitsSystemWindows(Landroid/view/View;)V

    .line 687
    sget v1, Landroid/support/v7/appcompat/R$id;->action_bar_activity_content:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/ContentFrameLayout;

    .line 690
    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    const v4, 0x1020002

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_14b

    .line 694
    :goto_12a
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-lez v6, :cond_13b

    .line 695
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 696
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 697
    invoke-virtual {v1, v6}, Landroid/support/v7/widget/ContentFrameLayout;->addView(Landroid/view/View;)V

    goto :goto_12a

    :cond_13b
    const/4 v2, -0x1

    .line 702
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setId(I)V

    .line 703
    invoke-virtual {v1, v4}, Landroid/support/v7/widget/ContentFrameLayout;->setId(I)V

    .line 707
    instance-of v2, v3, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_14b

    .line 708
    check-cast v3, Landroid/widget/FrameLayout;

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 713
    :cond_14b
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 715
    new-instance v2, Landroid/support/v7/app/AppCompatDelegateImpl$5;

    invoke-direct {v2, p0}, Landroid/support/v7/app/AppCompatDelegateImpl$5;-><init>(Landroid/support/v7/app/AppCompatDelegateImpl;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ContentFrameLayout;->setAttachListener(Landroid/support/v7/widget/ContentFrameLayout$OnAttachListener;)V

    return-object v0

    .line 670
    :cond_159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppCompat does not support the current theme features: { windowActionBar: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mHasActionBar:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionBarOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mOverlayActionBar:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", android:windowIsFloating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mIsFloating:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionModeOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mOverlayActionMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowNoTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mWindowNoTitle:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 554
    :cond_19f
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 555
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_1ab

    :goto_1aa
    throw v0

    :goto_1ab
    goto :goto_1aa
.end method

.method private ensureAutoNightModeManager()V
    .registers 3

    .line 2117
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;

    if-nez v0, :cond_11

    .line 2118
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v7/app/TwilightManager;->getInstance(Landroid/content/Context;)Landroid/support/v7/app/TwilightManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;-><init>(Landroid/support/v7/app/AppCompatDelegateImpl;Landroid/support/v7/app/TwilightManager;)V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;

    :cond_11
    return-void
.end method

.method private ensureSubDecor()V
    .registers 3

    .line 517
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mSubDecorInstalled:Z

    if-nez v0, :cond_50

    .line 518
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->createSubDecor()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mSubDecor:Landroid/view/ViewGroup;

    .line 521
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 522
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 523
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v1, :cond_1c

    .line 524
    invoke-interface {v1, v0}, Landroid/support/v7/widget/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_31

    .line 525
    :cond_1c
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->peekSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 526
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->peekSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_31

    .line 527
    :cond_2a
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mTitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_31

    .line 528
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 532
    :cond_31
    :goto_31
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->applyFixedSizeWindow()V

    .line 534
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mSubDecor:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->onSubDecorInstalled(Landroid/view/ViewGroup;)V

    const/4 v0, 0x1

    .line 536
    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mSubDecorInstalled:Z

    const/4 v0, 0x0

    .line 543
    invoke-virtual {p0, v0, v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v0

    .line 544
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mIsDestroyed:Z

    if-nez v1, :cond_50

    if-eqz v0, :cond_4b

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-nez v0, :cond_50

    :cond_4b
    const/16 v0, 0x6c

    .line 545
    invoke-direct {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->invalidatePanelMenu(I)V

    :cond_50
    return-void
.end method

.method private getNightMode()I
    .registers 3

    .line 2066
    iget v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mLocalNightMode:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_7

    goto :goto_b

    :cond_7
    invoke-static {}, Landroid/support/v7/app/AppCompatDelegateImpl;->getDefaultNightMode()I

    move-result v0

    :goto_b
    return v0
.end method

.method private initWindowDecorActionBar()V
    .registers 4

    .line 319
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->ensureSubDecor()V

    .line 321
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mHasActionBar:Z

    if-eqz v0, :cond_38

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_c

    goto :goto_38

    .line 325
    :cond_c
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_20

    .line 326
    new-instance v0, Landroid/support/v7/app/WindowDecorActionBar;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    check-cast v1, Landroid/app/Activity;

    iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mOverlayActionBar:Z

    invoke-direct {v0, v1, v2}, Landroid/support/v7/app/WindowDecorActionBar;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionBar:Landroid/support/v7/app/ActionBar;

    goto :goto_2f

    .line 328
    :cond_20
    instance-of v0, v0, Landroid/app/Dialog;

    if-eqz v0, :cond_2f

    .line 329
    new-instance v0, Landroid/support/v7/app/WindowDecorActionBar;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    check-cast v1, Landroid/app/Dialog;

    invoke-direct {v0, v1}, Landroid/support/v7/app/WindowDecorActionBar;-><init>(Landroid/app/Dialog;)V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionBar:Landroid/support/v7/app/ActionBar;

    .line 331
    :cond_2f
    :goto_2f
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_38

    .line 332
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mEnableDefaultActionBarUp:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V

    :cond_38
    :goto_38
    return-void
.end method

.method private initializePanelContent(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;)Z
    .registers 5

    .line 1518
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->createdPanelView:Landroid/view/View;

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 1519
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iput-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->shownPanelView:Landroid/view/View;

    return v1

    .line 1523
    :cond_a
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v2, 0x0

    if-nez v0, :cond_10

    return v2

    .line 1527
    :cond_10
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mPanelMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;

    if-nez v0, :cond_1b

    .line 1528
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;-><init>(Landroid/support/v7/app/AppCompatDelegateImpl;)V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mPanelMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;

    .line 1531
    :cond_1b
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mPanelMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->getListMenuView(Landroid/support/v7/view/menu/MenuPresenter$Callback;)Landroid/support/v7/view/menu/MenuView;

    move-result-object v0

    .line 1533
    check-cast v0, Landroid/view/View;

    iput-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 1535
    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->shownPanelView:Landroid/view/View;

    if-eqz p1, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v1, 0x0

    :goto_2b
    return v1
.end method

.method private initializePanelDecor(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;)Z
    .registers 4

    .line 1424
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->setStyle(Landroid/content/Context;)V

    .line 1425
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImpl$ListMenuDecorView;

    iget-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->listPresenterContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/app/AppCompatDelegateImpl$ListMenuDecorView;-><init>(Landroid/support/v7/app/AppCompatDelegateImpl;Landroid/content/Context;)V

    iput-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    const/16 v0, 0x51

    .line 1426
    iput v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->gravity:I

    const/4 p1, 0x1

    return p1
.end method

.method private initializePanelMenu(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;)Z
    .registers 8

    .line 1475
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    .line 1478
    iget v1, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->featureId:I

    const/4 v2, 0x1

    if-eqz v1, :cond_d

    iget v1, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->featureId:I

    const/16 v3, 0x6c

    if-ne v1, v3, :cond_65

    :cond_d
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v1, :cond_65

    .line 1480
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 1481
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 1482
    sget v4, Landroid/support/v7/appcompat/R$attr;->actionBarTheme:I

    invoke-virtual {v3, v4, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    const/4 v4, 0x0

    .line 1485
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_3a

    .line 1486
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 1487
    invoke-virtual {v4, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1488
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1489
    sget v5, Landroid/support/v7/appcompat/R$attr;->actionBarWidgetTheme:I

    invoke-virtual {v4, v5, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_3f

    .line 1492
    :cond_3a
    sget v5, Landroid/support/v7/appcompat/R$attr;->actionBarWidgetTheme:I

    invoke-virtual {v3, v5, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1496
    :goto_3f
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_55

    if-nez v4, :cond_50

    .line 1498
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 1499
    invoke-virtual {v4, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1501
    :cond_50
    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_55
    if-eqz v4, :cond_65

    .line 1505
    new-instance v1, Landroid/support/v7/view/ContextThemeWrapper;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Landroid/support/v7/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1506
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    move-object v0, v1

    .line 1510
    :cond_65
    new-instance v1, Landroid/support/v7/view/menu/MenuBuilder;

    invoke-direct {v1, v0}, Landroid/support/v7/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 1511
    invoke-virtual {v1, p0}, Landroid/support/v7/view/menu/MenuBuilder;->setCallback(Landroid/support/v7/view/menu/MenuBuilder$Callback;)V

    .line 1512
    invoke-virtual {p1, v1}, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->setMenu(Landroid/support/v7/view/menu/MenuBuilder;)V

    return v2
.end method

.method private invalidatePanelMenu(I)V
    .registers 4

    .line 1839
    iget v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mInvalidatePanelMenuFeatures:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    or-int/2addr p1, v0

    iput p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mInvalidatePanelMenuFeatures:I

    .line 1841
    iget-boolean p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mInvalidatePanelMenuPosted:Z

    if-nez p1, :cond_19

    .line 1842
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1843
    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mInvalidatePanelMenuPosted:Z

    :cond_19
    return-void
.end method

.method private onKeyDownPanel(ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 1693
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    .line 1694
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object p1

    .line 1695
    iget-boolean v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->isOpen:Z

    if-nez v0, :cond_14

    .line 1696
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImpl;->preparePanel(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method private onKeyUpPanel(ILandroid/view/KeyEvent;)Z
    .registers 6

    .line 1704
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionMode:Landroid/support/v7/view/ActionMode;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    .line 1709
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v2

    if-nez p1, :cond_43

    .line 1710
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz p1, :cond_43

    .line 1711
    invoke-interface {p1}, Landroid/support/v7/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result p1

    if-eqz p1, :cond_43

    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    .line 1712
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p1

    if-nez p1, :cond_43

    .line 1713
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {p1}, Landroid/support/v7/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result p1

    if-nez p1, :cond_3c

    .line 1714
    iget-boolean p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mIsDestroyed:Z

    if-nez p1, :cond_62

    invoke-direct {p0, v2, p2}, Landroid/support/v7/app/AppCompatDelegateImpl;->preparePanel(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_62

    .line 1715
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {p1}, Landroid/support/v7/widget/DecorContentParent;->showOverflowMenu()Z

    move-result v0

    goto :goto_6a

    .line 1718
    :cond_3c
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {p1}, Landroid/support/v7/widget/DecorContentParent;->hideOverflowMenu()Z

    move-result v0

    goto :goto_6a

    .line 1721
    :cond_43
    iget-boolean p1, v2, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->isOpen:Z

    if-nez p1, :cond_64

    iget-boolean p1, v2, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->isHandled:Z

    if-eqz p1, :cond_4c

    goto :goto_64

    .line 1727
    :cond_4c
    iget-boolean p1, v2, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->isPrepared:Z

    if-eqz p1, :cond_62

    .line 1729
    iget-boolean p1, v2, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->refreshMenuContent:Z

    if-eqz p1, :cond_5b

    .line 1732
    iput-boolean v1, v2, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->isPrepared:Z

    .line 1733
    invoke-direct {p0, v2, p2}, Landroid/support/v7/app/AppCompatDelegateImpl;->preparePanel(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result p1

    goto :goto_5c

    :cond_5b
    const/4 p1, 0x1

    :goto_5c
    if-eqz p1, :cond_62

    .line 1738
    invoke-direct {p0, v2, p2}, Landroid/support/v7/app/AppCompatDelegateImpl;->openPanel(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)V

    goto :goto_6a

    :cond_62
    const/4 v0, 0x0

    goto :goto_6a

    .line 1724
    :cond_64
    :goto_64
    iget-boolean p1, v2, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->isOpen:Z

    .line 1726
    invoke-virtual {p0, v2, v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->closePanel(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    move v0, p1

    :goto_6a
    if-eqz v0, :cond_83

    .line 1745
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    if-eqz p1, :cond_7c

    .line 1748
    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_83

    :cond_7c
    const-string p1, "AppCompatDelegate"

    const-string p2, "Couldn\'t get audio manager"

    .line 1750
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_83
    :goto_83
    return v0
.end method

.method private openPanel(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)V
    .registers 16

    .line 1329
    iget-boolean v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->isOpen:Z

    if-nez v0, :cond_f6

    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mIsDestroyed:Z

    if-eqz v0, :cond_a

    goto/16 :goto_f6

    .line 1335
    :cond_a
    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->featureId:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_27

    .line 1336
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1337
    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v3, 0x4

    if-ne v0, v3, :cond_23

    const/4 v0, 0x1

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :goto_24
    if-eqz v0, :cond_27

    return-void

    .line 1344
    :cond_27
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 1345
    iget v3, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->featureId:I

    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-interface {v0, v3, v4}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 1347
    invoke-virtual {p0, p1, v2}, Landroid/support/v7/app/AppCompatDelegateImpl;->closePanel(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    return-void

    .line 1351
    :cond_3b
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-nez v0, :cond_48

    return-void

    .line 1357
    :cond_48
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImpl;->preparePanel(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result p2

    if-nez p2, :cond_4f

    return-void

    .line 1362
    :cond_4f
    iget-object p2, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    const/4 v3, -0x1

    const/4 v4, -0x2

    if-eqz p2, :cond_6c

    iget-boolean p2, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->refreshDecorView:Z

    if-eqz p2, :cond_5a

    goto :goto_6c

    .line 1398
    :cond_5a
    iget-object p2, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-eqz p2, :cond_d4

    .line 1401
    iget-object p2, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->createdPanelView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_d4

    .line 1402
    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne p2, v3, :cond_d4

    const/4 v6, -0x1

    goto :goto_d5

    .line 1363
    :cond_6c
    :goto_6c
    iget-object p2, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    if-nez p2, :cond_7b

    .line 1365
    invoke-direct {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImpl;->initializePanelDecor(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;)Z

    move-result p2

    if-eqz p2, :cond_7a

    iget-object p2, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    if-nez p2, :cond_8c

    :cond_7a
    return-void

    .line 1367
    :cond_7b
    iget-boolean p2, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->refreshDecorView:Z

    if-eqz p2, :cond_8c

    iget-object p2, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_8c

    .line 1369
    iget-object p2, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1373
    :cond_8c
    invoke-direct {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImpl;->initializePanelContent(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;)Z

    move-result p2

    if-eqz p2, :cond_f6

    invoke-virtual {p1}, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->hasPanelItems()Z

    move-result p2

    if-nez p2, :cond_99

    goto :goto_f6

    .line 1377
    :cond_99
    iget-object p2, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-nez p2, :cond_a6

    .line 1379
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1382
    :cond_a6
    iget v3, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->background:I

    .line 1383
    iget-object v5, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 1385
    iget-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_c0

    .line 1386
    instance-of v5, v3, Landroid/view/ViewGroup;

    if-eqz v5, :cond_c0

    .line 1387
    check-cast v3, Landroid/view/ViewGroup;

    iget-object v5, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1389
    :cond_c0
    iget-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    iget-object v5, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v3, v5, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1395
    iget-object p2, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->hasFocus()Z

    move-result p2

    if-nez p2, :cond_d4

    .line 1396
    iget-object p2, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    :cond_d4
    const/4 v6, -0x2

    .line 1407
    :goto_d5
    iput-boolean v1, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->isHandled:Z

    .line 1409
    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    const/4 v7, -0x2

    iget v8, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->x:I

    iget v9, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->y:I

    const/16 v10, 0x3ea

    const/high16 v11, 0x820000

    const/4 v12, -0x3

    move-object v5, p2

    invoke-direct/range {v5 .. v12}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 1416
    iget v1, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->gravity:I

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1417
    iget v1, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->windowAnimations:I

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1419
    iget-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    invoke-interface {v0, v1, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1420
    iput-boolean v2, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->isOpen:Z

    :cond_f6
    :goto_f6
    return-void
.end method

.method private performPanelShortcut(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    .registers 7

    .line 1815
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 1823
    :cond_8
    iget-boolean v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->isPrepared:Z

    if-nez v0, :cond_12

    invoke-direct {p0, p1, p3}, Landroid/support/v7/app/AppCompatDelegateImpl;->preparePanel(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_12
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v0, :cond_1c

    .line 1825
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, p2, p3, p4}, Landroid/support/v7/view/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v1

    :cond_1c
    if-eqz v1, :cond_2a

    const/4 p2, 0x1

    and-int/lit8 p3, p4, 0x1

    if-nez p3, :cond_2a

    .line 1830
    iget-object p3, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-nez p3, :cond_2a

    .line 1831
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImpl;->closePanel(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    :cond_2a
    return v1
.end method

.method private preparePanel(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z
    .registers 11

    .line 1539
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mIsDestroyed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 1544
    :cond_6
    iget-boolean v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->isPrepared:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    return v2

    .line 1548
    :cond_c
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    if-eqz v0, :cond_15

    if-eq v0, p1, :cond_15

    .line 1550
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/app/AppCompatDelegateImpl;->closePanel(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    .line 1553
    :cond_15
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 1556
    iget v3, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->featureId:I

    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->createdPanelView:Landroid/view/View;

    .line 1559
    :cond_23
    iget v3, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->featureId:I

    if-eqz v3, :cond_30

    iget v3, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->featureId:I

    const/16 v4, 0x6c

    if-ne v3, v4, :cond_2e

    goto :goto_30

    :cond_2e
    const/4 v3, 0x0

    goto :goto_31

    :cond_30
    :goto_30
    const/4 v3, 0x1

    :goto_31
    if-eqz v3, :cond_3a

    .line 1562
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v4, :cond_3a

    .line 1565
    invoke-interface {v4}, Landroid/support/v7/widget/DecorContentParent;->setMenuPrepared()V

    .line 1568
    :cond_3a
    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-nez v4, :cond_ea

    if-eqz v3, :cond_48

    .line 1569
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->peekSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v4

    instance-of v4, v4, Landroid/support/v7/app/ToolbarActionBar;

    if-nez v4, :cond_ea

    .line 1572
    :cond_48
    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v5, 0x0

    if-eqz v4, :cond_51

    iget-boolean v4, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->refreshMenuContent:Z

    if-eqz v4, :cond_9a

    .line 1573
    :cond_51
    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-nez v4, :cond_60

    .line 1574
    invoke-direct {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImpl;->initializePanelMenu(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;)Z

    move-result v4

    if-eqz v4, :cond_5f

    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-nez v4, :cond_60

    :cond_5f
    return v1

    :cond_60
    if-eqz v3, :cond_7a

    .line 1579
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v4, :cond_7a

    .line 1580
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImpl$ActionMenuPresenterCallback;

    if-nez v4, :cond_71

    .line 1581
    new-instance v4, Landroid/support/v7/app/AppCompatDelegateImpl$ActionMenuPresenterCallback;

    invoke-direct {v4, p0}, Landroid/support/v7/app/AppCompatDelegateImpl$ActionMenuPresenterCallback;-><init>(Landroid/support/v7/app/AppCompatDelegateImpl;)V

    iput-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImpl$ActionMenuPresenterCallback;

    .line 1583
    :cond_71
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    iget-object v6, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v7, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImpl$ActionMenuPresenterCallback;

    invoke-interface {v4, v6, v7}, Landroid/support/v7/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Landroid/support/v7/view/menu/MenuPresenter$Callback;)V

    .line 1588
    :cond_7a
    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1589
    iget v4, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->featureId:I

    iget-object v6, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-interface {v0, v4, v6}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_98

    .line 1591
    invoke-virtual {p1, v5}, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->setMenu(Landroid/support/v7/view/menu/MenuBuilder;)V

    if-eqz v3, :cond_97

    .line 1593
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz p1, :cond_97

    .line 1595
    iget-object p2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImpl$ActionMenuPresenterCallback;

    invoke-interface {p1, v5, p2}, Landroid/support/v7/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Landroid/support/v7/view/menu/MenuPresenter$Callback;)V

    :cond_97
    return v1

    .line 1601
    :cond_98
    iput-boolean v1, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->refreshMenuContent:Z

    .line 1606
    :cond_9a
    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1610
    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    if-eqz v4, :cond_ac

    .line 1611
    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v6, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    invoke-virtual {v4, v6}, Landroid/support/v7/view/menu/MenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    .line 1612
    iput-object v5, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    .line 1616
    :cond_ac
    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iget-object v6, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-interface {v0, v1, v4, v6}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_c7

    if-eqz v3, :cond_c1

    .line 1617
    iget-object p2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz p2, :cond_c1

    .line 1620
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImpl$ActionMenuPresenterCallback;

    invoke-interface {p2, v5, v0}, Landroid/support/v7/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Landroid/support/v7/view/menu/MenuPresenter$Callback;)V

    .line 1622
    :cond_c1
    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    return v1

    :cond_c7
    if-eqz p2, :cond_ce

    .line 1628
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p2

    goto :goto_cf

    :cond_ce
    const/4 p2, -0x1

    .line 1627
    :goto_cf
    invoke-static {p2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object p2

    .line 1629
    invoke-virtual {p2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result p2

    if-eq p2, v2, :cond_db

    const/4 p2, 0x1

    goto :goto_dc

    :cond_db
    const/4 p2, 0x0

    :goto_dc
    iput-boolean p2, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->qwertyMode:Z

    .line 1630
    iget-object p2, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    iget-boolean v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->qwertyMode:Z

    invoke-virtual {p2, v0}, Landroid/support/v7/view/menu/MenuBuilder;->setQwertyMode(Z)V

    .line 1631
    iget-object p2, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {p2}, Landroid/support/v7/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1635
    :cond_ea
    iput-boolean v2, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->isPrepared:Z

    .line 1636
    iput-boolean v1, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->isHandled:Z

    .line 1637
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    return v2
.end method

.method private reopenMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
    .registers 7

    .line 1431
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_84

    invoke-interface {p1}, Landroid/support/v7/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result p1

    if-eqz p1, :cond_84

    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    .line 1432
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p1

    if-eqz p1, :cond_20

    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    .line 1433
    invoke-interface {p1}, Landroid/support/v7/widget/DecorContentParent;->isOverflowMenuShowPending()Z

    move-result p1

    if-eqz p1, :cond_84

    .line 1435
    :cond_20
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object p1

    .line 1437
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v2}, Landroid/support/v7/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v2

    const/16 v3, 0x6c

    if-eqz v2, :cond_44

    if-nez p2, :cond_31

    goto :goto_44

    .line 1457
    :cond_31
    iget-object p2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {p2}, Landroid/support/v7/widget/DecorContentParent;->hideOverflowMenu()Z

    .line 1458
    iget-boolean p2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mIsDestroyed:Z

    if-nez p2, :cond_83

    .line 1459
    invoke-virtual {p0, v1, v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object p2

    .line 1460
    iget-object p2, p2, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-interface {p1, v3, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_83

    :cond_44
    :goto_44
    if-eqz p1, :cond_83

    .line 1438
    iget-boolean p2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mIsDestroyed:Z

    if-nez p2, :cond_83

    .line 1440
    iget-boolean p2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mInvalidatePanelMenuPosted:Z

    if-eqz p2, :cond_63

    iget p2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mInvalidatePanelMenuFeatures:I

    and-int/2addr p2, v0

    if-eqz p2, :cond_63

    .line 1442
    iget-object p2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1443
    iget-object p2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 1446
    :cond_63
    invoke-virtual {p0, v1, v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object p2

    .line 1450
    iget-object v0, p2, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v0, :cond_83

    iget-boolean v0, p2, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->refreshMenuContent:Z

    if-nez v0, :cond_83

    iget-object v0, p2, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iget-object v2, p2, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 1451
    invoke-interface {p1, v1, v0, v2}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 1452
    iget-object p2, p2, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-interface {p1, v3, p2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 1453
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {p1}, Landroid/support/v7/widget/DecorContentParent;->showOverflowMenu()Z

    :cond_83
    :goto_83
    return-void

    .line 1466
    :cond_84
    invoke-virtual {p0, v1, v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object p1

    .line 1468
    iput-boolean v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->refreshDecorView:Z

    .line 1469
    invoke-virtual {p0, p1, v1}, Landroid/support/v7/app/AppCompatDelegateImpl;->closePanel(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    const/4 p2, 0x0

    .line 1471
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImpl;->openPanel(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)V

    return-void
.end method

.method private sanitizeWindowFeatureId(I)I
    .registers 4

    const-string v0, "AppCompatDelegate"

    const/16 v1, 0x8

    if-ne p1, v1, :cond_e

    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature."

    .line 1959
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x6c

    return p1

    :cond_e
    const/16 v1, 0x9

    if-ne p1, v1, :cond_19

    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature."

    .line 1963
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x6d

    :cond_19
    return p1
.end method

.method private shouldInheritContext(Landroid/view/ViewParent;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1278
    :cond_4
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    :goto_a
    if-nez p1, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    if-eq p1, v1, :cond_23

    .line 1286
    instance-of v2, p1, Landroid/view/View;

    if-eqz v2, :cond_23

    move-object v2, p1

    check-cast v2, Landroid/view/View;

    .line 1287
    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1e

    goto :goto_23

    .line 1294
    :cond_1e
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_a

    :cond_23
    :goto_23
    return v0
.end method

.method private shouldRecreateOnNightModeChange()Z
    .registers 7

    .line 2129
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mApplyDayNightCalled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_30

    .line 2132
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x1

    .line 2134
    :try_start_10
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    .line 2135
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2134
    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 2138
    iget v0, v0, Landroid/content/pm/ActivityInfo;->configChanges:I
    :try_end_21
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_21} :catch_27

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_26

    const/4 v1, 0x1

    :cond_26
    return v1

    :catch_27
    move-exception v0

    const-string v1, "AppCompatDelegate"

    const-string v3, "Exception while getting ActivityInfo"

    .line 2142
    invoke-static {v1, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2

    :cond_30
    return v1
.end method

.method private throwFeatureRequestIfSubDecorInstalled()V
    .registers 3

    .line 1951
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mSubDecorInstalled:Z

    if-nez v0, :cond_5

    return-void

    .line 1952
    :cond_5
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Window feature must be requested before adding content"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateForNightMode(I)Z
    .registers 6

    .line 2074
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2075
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 2076
    iget v2, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    const/4 v3, 0x2

    if-ne p1, v3, :cond_14

    const/16 p1, 0x20

    goto :goto_16

    :cond_14
    const/16 p1, 0x10

    :goto_16
    if-eq v2, p1, :cond_44

    .line 2083
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->shouldRecreateOnNightModeChange()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 2089
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    .line 2090
    invoke-virtual {p1}, Landroid/app/Activity;->recreate()V

    goto :goto_42

    .line 2095
    :cond_26
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 2096
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 2099
    iget v3, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, -0x31

    or-int/2addr p1, v3

    iput p1, v2, Landroid/content/res/Configuration;->uiMode:I

    .line 2100
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 2103
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge p1, v1, :cond_42

    .line 2104
    invoke-static {v0}, Landroid/support/v7/app/ResourcesFlusher;->flush(Landroid/content/res/Resources;)V

    :cond_42
    :goto_42
    const/4 p1, 0x1

    return p1

    :cond_44
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    .line 484
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->ensureSubDecor()V

    .line 485
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mSubDecor:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 486
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 487
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public applyDayNight()Z
    .registers 4

    .line 2004
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getNightMode()I

    move-result v0

    .line 2005
    invoke-virtual {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->mapNightMode(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_10

    .line 2007
    invoke-direct {p0, v1}, Landroid/support/v7/app/AppCompatDelegateImpl;->updateForNightMode(I)Z

    move-result v1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    if-nez v0, :cond_1b

    .line 2012
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->ensureAutoNightModeManager()V

    .line 2013
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->setup()V

    :cond_1b
    const/4 v0, 0x1

    .line 2016
    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mApplyDayNightCalled:Z

    return v1
.end method

.method callOnPanelClosed(ILandroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/Menu;)V
    .registers 6

    if-nez p3, :cond_11

    if-nez p2, :cond_d

    if-ltz p1, :cond_d

    .line 1761
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mPanels:[Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    array-length v1, v0

    if-ge p1, v1, :cond_d

    .line 1762
    aget-object p2, v0, p1

    :cond_d
    if-eqz p2, :cond_11

    .line 1768
    iget-object p3, p2, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    :cond_11
    if-eqz p2, :cond_18

    .line 1773
    iget-boolean p2, p2, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->isOpen:Z

    if-nez p2, :cond_18

    return-void

    .line 1776
    :cond_18
    iget-boolean p2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mIsDestroyed:Z

    if-nez p2, :cond_21

    .line 1780
    iget-object p2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {p2, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_21
    return-void
.end method

.method checkCloseActionMenu(Landroid/support/v7/view/menu/MenuBuilder;)V
    .registers 4

    .line 1643
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mClosingActionMenu:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 1647
    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mClosingActionMenu:Z

    .line 1648
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorContentParent;->dismissPopups()V

    .line 1649
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 1650
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mIsDestroyed:Z

    if-nez v1, :cond_1c

    const/16 v1, 0x6c

    .line 1651
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_1c
    const/4 p1, 0x0

    .line 1653
    iput-boolean p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mClosingActionMenu:Z

    return-void
.end method

.method closePanel(I)V
    .registers 3

    const/4 v0, 0x1

    .line 1657
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->closePanel(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    return-void
.end method

.method closePanel(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Z)V
    .registers 6

    if-eqz p2, :cond_16

    .line 1661
    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->featureId:I

    if-nez v0, :cond_16

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v0, :cond_16

    .line 1662
    invoke-interface {v0}, Landroid/support/v7/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1663
    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImpl;->checkCloseActionMenu(Landroid/support/v7/view/menu/MenuBuilder;)V

    return-void

    .line 1667
    :cond_16
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_37

    .line 1668
    iget-boolean v2, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->isOpen:Z

    if-eqz v2, :cond_37

    iget-object v2, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_37

    .line 1669
    iget-object v2, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    if-eqz p2, :cond_37

    .line 1672
    iget p2, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->featureId:I

    invoke-virtual {p0, p2, p1, v1}, Landroid/support/v7/app/AppCompatDelegateImpl;->callOnPanelClosed(ILandroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/Menu;)V

    :cond_37
    const/4 p2, 0x0

    .line 1676
    iput-boolean p2, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->isPrepared:Z

    .line 1677
    iput-boolean p2, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->isHandled:Z

    .line 1678
    iput-boolean p2, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->isOpen:Z

    .line 1681
    iput-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->shownPanelView:Landroid/view/View;

    const/4 p2, 0x1

    .line 1685
    iput-boolean p2, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->refreshDecorView:Z

    .line 1687
    iget-object p2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    if-ne p2, p1, :cond_49

    .line 1688
    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    :cond_49
    return-void
.end method

.method public createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 16

    .line 1234
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mAppCompatViewInflater:Landroid/support/v7/app/AppCompatViewInflater;

    const/4 v1, 0x0

    if-nez v0, :cond_62

    .line 1235
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme:[I

    invoke-virtual {v0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1236
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_viewInflaterClass:I

    .line 1237
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5b

    .line 1238
    const-class v2, Landroid/support/v7/app/AppCompatViewInflater;

    .line 1239
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    goto :goto_5b

    .line 1245
    :cond_22
    :try_start_22
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Class;

    .line 1247
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    .line 1248
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/app/AppCompatViewInflater;

    iput-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mAppCompatViewInflater:Landroid/support/v7/app/AppCompatViewInflater;
    :try_end_36
    .catchall {:try_start_22 .. :try_end_36} :catchall_37

    goto :goto_62

    :catchall_37
    move-exception v2

    .line 1250
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to instantiate custom view inflater "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Falling back to default."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "AppCompatDelegate"

    invoke-static {v3, v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1252
    new-instance v0, Landroid/support/v7/app/AppCompatViewInflater;

    invoke-direct {v0}, Landroid/support/v7/app/AppCompatViewInflater;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mAppCompatViewInflater:Landroid/support/v7/app/AppCompatViewInflater;

    goto :goto_62

    .line 1242
    :cond_5b
    :goto_5b
    new-instance v0, Landroid/support/v7/app/AppCompatViewInflater;

    invoke-direct {v0}, Landroid/support/v7/app/AppCompatViewInflater;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mAppCompatViewInflater:Landroid/support/v7/app/AppCompatViewInflater;

    .line 1258
    :cond_62
    :goto_62
    sget-boolean v8, Landroid/support/v7/app/AppCompatDelegateImpl;->IS_PRE_LOLLIPOP:Z

    if-eqz v8, :cond_80

    .line 1259
    instance-of v0, p4, Lorg/xmlpull/v1/XmlPullParser;

    const/4 v2, 0x1

    if-eqz v0, :cond_76

    move-object v0, p4

    check-cast v0, Lorg/xmlpull/v1/XmlPullParser;

    .line 1261
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-le v0, v2, :cond_7e

    const/4 v1, 0x1

    goto :goto_7e

    :cond_76
    move-object v0, p1

    check-cast v0, Landroid/view/ViewParent;

    .line 1263
    invoke-direct {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->shouldInheritContext(Landroid/view/ViewParent;)Z

    move-result v0

    move v1, v0

    :cond_7e
    :goto_7e
    move v7, v1

    goto :goto_81

    :cond_80
    const/4 v7, 0x0

    .line 1266
    :goto_81
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mAppCompatViewInflater:Landroid/support/v7/app/AppCompatViewInflater;

    const/4 v9, 0x1

    .line 1269
    invoke-static {}, Landroid/support/v7/widget/VectorEnabledTintResources;->shouldBeUsed()Z

    move-result v10

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 1266
    invoke-virtual/range {v2 .. v10}, Landroid/support/v7/app/AppCompatViewInflater;->createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZZZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method dismissPopups()V
    .registers 3

    .line 1976
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v0, :cond_7

    .line 1977
    invoke-interface {v0}, Landroid/support/v7/widget/DecorContentParent;->dismissPopups()V

    .line 1980
    :cond_7
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_26

    .line 1981
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mShowActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1982
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1984
    :try_start_1e
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_23
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e .. :try_end_23} :catch_23

    :catch_23
    :cond_23
    const/4 v0, 0x0

    .line 1990
    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModePopup:Landroid/widget/PopupWindow;

    .line 1992
    :cond_26
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->endOnGoingFadeAnimation()V

    const/4 v0, 0x0

    .line 1994
    invoke-virtual {p0, v0, v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 1995
    iget-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v1, :cond_39

    .line 1996
    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->close()V

    :cond_39
    return-void
.end method

.method dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5

    .line 1165
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v1, v0, Landroid/support/v4/view/KeyEventDispatcher$Component;

    const/4 v2, 0x1

    if-nez v1, :cond_b

    instance-of v0, v0, Landroid/support/v7/app/AppCompatDialog;

    if-eqz v0, :cond_1a

    .line 1167
    :cond_b
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 1168
    invoke-static {v0, p1}, Landroid/support/v4/view/KeyEventDispatcher;->dispatchBeforeHierarchy(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1a

    return v2

    .line 1173
    :cond_1a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_2b

    .line 1175
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2b

    return v2

    .line 1180
    :cond_2b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1181
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_36

    goto :goto_37

    :cond_36
    const/4 v2, 0x0

    :goto_37
    if-eqz v2, :cond_3e

    .line 1184
    invoke-virtual {p0, v0, p1}, Landroid/support/v7/app/AppCompatDelegateImpl;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    goto :goto_42

    :cond_3e
    invoke-virtual {p0, v0, p1}, Landroid/support/v7/app/AppCompatDelegateImpl;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    :goto_42
    return p1
.end method

.method doInvalidatePanelMenu(I)V
    .registers 6

    const/4 v0, 0x1

    .line 1848
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v1

    .line 1850
    iget-object v2, v1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v2, :cond_25

    .line 1851
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1852
    iget-object v3, v1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v3, v2}, Landroid/support/v7/view/menu/MenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    .line 1853
    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v3

    if-lez v3, :cond_1b

    .line 1854
    iput-object v2, v1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    .line 1857
    :cond_1b
    iget-object v2, v1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1858
    iget-object v2, v1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuBuilder;->clear()V

    .line 1860
    :cond_25
    iput-boolean v0, v1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->refreshMenuContent:Z

    .line 1861
    iput-boolean v0, v1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->refreshDecorView:Z

    const/16 v0, 0x6c

    if-eq p1, v0, :cond_2f

    if-nez p1, :cond_40

    .line 1864
    :cond_2f
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz p1, :cond_40

    const/4 p1, 0x0

    .line 1866
    invoke-virtual {p0, p1, p1}, Landroid/support/v7/app/AppCompatDelegateImpl;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 1868
    iput-boolean p1, v0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->isPrepared:Z

    const/4 p1, 0x0

    .line 1869
    invoke-direct {p0, v0, p1}, Landroid/support/v7/app/AppCompatDelegateImpl;->preparePanel(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z

    :cond_40
    return-void
.end method

.method endOnGoingFadeAnimation()V
    .registers 2

    .line 1104
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    if-eqz v0, :cond_7

    .line 1105
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    :cond_7
    return-void
.end method

.method findMenuPanel(Landroid/view/Menu;)Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;
    .registers 7

    .line 1785
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mPanels:[Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 1786
    array-length v2, v0

    goto :goto_8

    :cond_7
    const/4 v2, 0x0

    :goto_8
    if-ge v1, v2, :cond_16

    .line 1788
    aget-object v3, v0, v1

    if-eqz v3, :cond_13

    .line 1789
    iget-object v4, v3, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-ne v4, p1, :cond_13

    return-object v3

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_16
    const/4 p1, 0x0

    return-object p1
.end method

.method public findViewById(I)Landroid/view/View;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 403
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->ensureSubDecor()V

    .line 404
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method final getActionBarThemedContext()Landroid/content/Context;
    .registers 2

    .line 377
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 379
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-nez v0, :cond_10

    .line 383
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    :cond_10
    return-object v0
.end method

.method final getAutoNightModeManager()Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;
    .registers 2

    .line 2124
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->ensureAutoNightModeManager()V

    .line 2125
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;

    return-object v0
.end method

.method public final getDrawerToggleDelegate()Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;
    .registers 2

    .line 2728
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;-><init>(Landroid/support/v7/app/AppCompatDelegateImpl;)V

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .registers 3

    .line 391
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mMenuInflater:Landroid/view/MenuInflater;

    if-nez v0, :cond_19

    .line 392
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->initWindowDecorActionBar()V

    .line 393
    new-instance v0, Landroid/support/v7/view/SupportMenuInflater;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v1, :cond_12

    .line 394
    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_14

    :cond_12
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    :goto_14
    invoke-direct {v0, v1}, Landroid/support/v7/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mMenuInflater:Landroid/view/MenuInflater;

    .line 396
    :cond_19
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mMenuInflater:Landroid/view/MenuInflater;

    return-object v0
.end method

.method protected getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;
    .registers 6

    .line 1798
    iget-object p2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mPanels:[Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    if-eqz p2, :cond_7

    array-length v0, p2

    if-gt v0, p1, :cond_15

    :cond_7
    add-int/lit8 v0, p1, 0x1

    .line 1799
    new-array v0, v0, [Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    if-eqz p2, :cond_12

    .line 1801
    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1803
    :cond_12
    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mPanels:[Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    move-object p2, v0

    .line 1806
    :cond_15
    aget-object v0, p2, p1

    if-nez v0, :cond_20

    .line 1808
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    invoke-direct {v0, p1}, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;-><init>(I)V

    aput-object v0, p2, p1

    :cond_20
    return-object v0
.end method

.method getSubDecor()Landroid/view/ViewGroup;
    .registers 2

    .line 1972
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mSubDecor:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getSupportActionBar()Landroid/support/v7/app/ActionBar;
    .registers 2

    .line 306
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->initWindowDecorActionBar()V

    .line 307
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionBar:Landroid/support/v7/app/ActionBar;

    return-object v0
.end method

.method final getTitle()Ljava/lang/CharSequence;
    .registers 3

    .line 850
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_d

    .line 851
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 854
    :cond_d
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method final getWindowCallback()Landroid/view/Window$Callback;
    .registers 2

    .line 315
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    return-object v0
.end method

.method public hasWindowFeature(I)Z
    .registers 6

    .line 812
    invoke-direct {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImpl;->sanitizeWindowFeatureId(I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2b

    const/4 v3, 0x2

    if-eq v0, v3, :cond_28

    const/4 v3, 0x5

    if-eq v0, v3, :cond_25

    const/16 v3, 0xa

    if-eq v0, v3, :cond_22

    const/16 v3, 0x6c

    if-eq v0, v3, :cond_1f

    const/16 v3, 0x6d

    if-eq v0, v3, :cond_1c

    const/4 v0, 0x0

    goto :goto_2d

    .line 817
    :cond_1c
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mOverlayActionBar:Z

    goto :goto_2d

    .line 814
    :cond_1f
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mHasActionBar:Z

    goto :goto_2d

    .line 820
    :cond_22
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mOverlayActionMode:Z

    goto :goto_2d

    .line 826
    :cond_25
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mFeatureIndeterminateProgress:Z

    goto :goto_2d

    .line 823
    :cond_28
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mFeatureProgress:Z

    goto :goto_2d

    .line 829
    :cond_2b
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mWindowNoTitle:Z

    :goto_2d
    if-nez v0, :cond_39

    .line 832
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->hasFeature(I)Z

    move-result p1

    if-eqz p1, :cond_38

    goto :goto_39

    :cond_38
    const/4 v1, 0x0

    :cond_39
    :goto_39
    return v1
.end method

.method public installViewFactory()V
    .registers 3

    .line 1300
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1301
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    if-nez v1, :cond_10

    .line 1302
    invoke-static {v0, p0}, Landroid/support/v4/view/LayoutInflaterCompat;->setFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_1f

    .line 1304
    :cond_10
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl;

    if-nez v0, :cond_1f

    const-string v0, "AppCompatDelegate"

    const-string v1, "The Activity\'s LayoutInflater already has a Factory installed so we can not install AppCompat\'s"

    .line 1305
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    :goto_1f
    return-void
.end method

.method public invalidateOptionsMenu()V
    .registers 2

    .line 929
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 930
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->invalidateOptionsMenu()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    :cond_d
    const/4 v0, 0x0

    .line 932
    invoke-direct {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->invalidatePanelMenu(I)V

    return-void
.end method

.method public isHandleNativeActionModesEnabled()Z
    .registers 2

    .line 1100
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mHandleNativeActionModes:Z

    return v0
.end method

.method mapNightMode(I)I
    .registers 4

    const/16 v0, -0x64

    const/4 v1, -0x1

    if-eq p1, v0, :cond_29

    if-eqz p1, :cond_8

    return p1

    .line 2046
    :cond_8
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_1f

    .line 2047
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/UiModeManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/UiModeManager;

    .line 2048
    invoke-virtual {p1}, Landroid/app/UiModeManager;->getNightMode()I

    move-result p1

    if-nez p1, :cond_1f

    return v1

    .line 2054
    :cond_1f
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->ensureAutoNightModeManager()V

    .line 2055
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;

    invoke-virtual {p1}, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->getApplyableNightMode()I

    move-result p1

    return p1

    :cond_29
    return v1
.end method

.method onBackPressed()Z
    .registers 3

    .line 1111
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionMode:Landroid/support/v7/view/ActionMode;

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    .line 1112
    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->finish()V

    return v1

    .line 1117
    :cond_9
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 1118
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->collapseActionView()Z

    move-result v0

    if-eqz v0, :cond_16

    return v1

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 411
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mHasActionBar:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mSubDecorInstalled:Z

    if-eqz v0, :cond_11

    .line 414
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 416
    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 421
    :cond_11
    invoke-static {}, Landroid/support/v7/widget/AppCompatDrawableManager;->get()Landroid/support/v7/widget/AppCompatDrawableManager;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->onConfigurationChanged(Landroid/content/Context;)V

    .line 424
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->applyDayNight()Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 269
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1e

    const/4 v1, 0x0

    .line 272
    :try_start_7
    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Landroid/support/v4/app/NavUtils;->getParentActivityName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_d} :catch_e

    goto :goto_f

    :catch_e
    nop

    :goto_f
    if-eqz v1, :cond_1e

    .line 279
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->peekSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_1b

    .line 281
    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mEnableDefaultActionBarUp:Z

    goto :goto_1e

    .line 283
    :cond_1b
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V

    :cond_1e
    :goto_1e
    if-eqz p1, :cond_2e

    .line 288
    iget v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mLocalNightMode:I

    const/16 v1, -0x64

    if-ne v0, v1, :cond_2e

    const-string v0, "appcompat:local_night_mode"

    .line 291
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mLocalNightMode:I

    :cond_2e
    return-void
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 5

    .line 1316
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v7/app/AppCompatDelegateImpl;->createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 5

    const/4 v0, 0x0

    .line 1324
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/support/v7/app/AppCompatDelegateImpl;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .registers 3

    .line 500
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mInvalidatePanelMenuPosted:Z

    if-eqz v0, :cond_f

    .line 501
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_f
    const/4 v0, 0x1

    .line 504
    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mIsDestroyed:Z

    .line 506
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_19

    .line 507
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->onDestroy()V

    .line 511
    :cond_19
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;

    if-eqz v0, :cond_20

    .line 512
    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->cleanup()V

    :cond_20
    return-void
.end method

.method onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_e

    const/16 v0, 0x52

    if-eq p1, v0, :cond_a

    goto :goto_1a

    .line 1217
    :cond_a
    invoke-direct {p0, v2, p2}, Landroid/support/v7/app/AppCompatDelegateImpl;->onKeyDownPanel(ILandroid/view/KeyEvent;)Z

    return v1

    .line 1225
    :cond_e
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_17

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mLongPressBackDown:Z

    :goto_1a
    return v2
.end method

.method onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .registers 6

    .line 1128
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    .line 1129
    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/ActionBar;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_e

    return v1

    .line 1135
    :cond_e
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    if-eqz p1, :cond_23

    .line 1136
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-direct {p0, p1, v0, p2, v1}, Landroid/support/v7/app/AppCompatDelegateImpl;->performPanelShortcut(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 1139
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    if-eqz p1, :cond_22

    .line 1140
    iput-boolean v1, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->isHandled:Z

    :cond_22
    return v1

    .line 1150
    :cond_23
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    const/4 v0, 0x0

    if-nez p1, :cond_3c

    .line 1151
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/app/AppCompatDelegateImpl;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object p1

    .line 1152
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImpl;->preparePanel(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 1153
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-direct {p0, p1, v2, p2, v1}, Landroid/support/v7/app/AppCompatDelegateImpl;->performPanelShortcut(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result p2

    .line 1154
    iput-boolean v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->isPrepared:Z

    if-eqz p2, :cond_3c

    return v1

    :cond_3c
    return v0
.end method

.method onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_e

    const/16 v0, 0x52

    if-eq p1, v0, :cond_a

    goto :goto_29

    .line 1190
    :cond_a
    invoke-direct {p0, v2, p2}, Landroid/support/v7/app/AppCompatDelegateImpl;->onKeyUpPanel(ILandroid/view/KeyEvent;)Z

    return v1

    .line 1193
    :cond_e
    iget-boolean p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mLongPressBackDown:Z

    .line 1194
    iput-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mLongPressBackDown:Z

    .line 1196
    invoke-virtual {p0, v2, v2}, Landroid/support/v7/app/AppCompatDelegateImpl;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object p2

    if-eqz p2, :cond_22

    .line 1197
    iget-boolean v0, p2, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->isOpen:Z

    if-eqz v0, :cond_22

    if-nez p1, :cond_21

    .line 1202
    invoke-virtual {p0, p2, v1}, Landroid/support/v7/app/AppCompatDelegateImpl;->closePanel(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    :cond_21
    return v1

    .line 1206
    :cond_22
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->onBackPressed()Z

    move-result p1

    if-eqz p1, :cond_29

    return v1

    :cond_29
    :goto_29
    return v2
.end method

.method public onMenuItemSelected(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 5

    .line 884
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 885
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mIsDestroyed:Z

    if-nez v1, :cond_1b

    .line 886
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuBuilder;->getRootMenu()Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImpl;->findMenuPanel(Landroid/view/Menu;)Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 888
    iget p1, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->featureId:I

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_1b
    const/4 p1, 0x0

    return p1
.end method

.method public onMenuModeChange(Landroid/support/v7/view/menu/MenuBuilder;)V
    .registers 3

    const/4 v0, 0x1

    .line 896
    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->reopenMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V

    return-void
.end method

.method onMenuOpened(I)V
    .registers 3

    const/16 v0, 0x6c

    if-ne p1, v0, :cond_e

    .line 875
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_e

    const/4 v0, 0x1

    .line 877
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    :cond_e
    return-void
.end method

.method onPanelClosed(I)V
    .registers 4

    const/4 v0, 0x0

    const/16 v1, 0x6c

    if-ne p1, v1, :cond_f

    .line 859
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 861
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    goto :goto_1d

    :cond_f
    if-nez p1, :cond_1d

    const/4 v1, 0x1

    .line 866
    invoke-virtual {p0, p1, v1}, Landroid/support/v7/app/AppCompatDelegateImpl;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object p1

    .line 867
    iget-boolean v1, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->isOpen:Z

    if-eqz v1, :cond_1d

    .line 868
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->closePanel(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 299
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->ensureSubDecor()V

    return-void
.end method

.method public onPostResume()V
    .registers 3

    .line 449
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    .line 451
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    :cond_a
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 492
    iget v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mLocalNightMode:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_b

    const-string v1, "appcompat:local_night_mode"

    .line 494
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_b
    return-void
.end method

.method public onStart()V
    .registers 1

    .line 431
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->applyDayNight()Z

    return-void
.end method

.method public onStop()V
    .registers 3

    .line 436
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v1, 0x0

    .line 438
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 442
    :cond_a
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;

    if-eqz v0, :cond_11

    .line 443
    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->cleanup()V

    :cond_11
    return-void
.end method

.method onSubDecorInstalled(Landroid/view/ViewGroup;)V
    .registers 2

    return-void
.end method

.method final peekSupportActionBar()Landroid/support/v7/app/ActionBar;
    .registers 2

    .line 311
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionBar:Landroid/support/v7/app/ActionBar;

    return-object v0
.end method

.method public requestWindowFeature(I)Z
    .registers 6

    .line 769
    invoke-direct {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImpl;->sanitizeWindowFeatureId(I)I

    move-result p1

    .line 771
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mWindowNoTitle:Z

    const/4 v1, 0x0

    const/16 v2, 0x6c

    if-eqz v0, :cond_e

    if-ne p1, v2, :cond_e

    return v1

    .line 774
    :cond_e
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mHasActionBar:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_17

    if-ne p1, v3, :cond_17

    .line 776
    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mHasActionBar:Z

    :cond_17
    if-eq p1, v3, :cond_4e

    const/4 v0, 0x2

    if-eq p1, v0, :cond_48

    const/4 v0, 0x5

    if-eq p1, v0, :cond_42

    const/16 v0, 0xa

    if-eq p1, v0, :cond_3c

    if-eq p1, v2, :cond_36

    const/16 v0, 0x6d

    if-eq p1, v0, :cond_30

    .line 806
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result p1

    return p1

    .line 785
    :cond_30
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->throwFeatureRequestIfSubDecorInstalled()V

    .line 786
    iput-boolean v3, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mOverlayActionBar:Z

    return v3

    .line 781
    :cond_36
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->throwFeatureRequestIfSubDecorInstalled()V

    .line 782
    iput-boolean v3, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mHasActionBar:Z

    return v3

    .line 789
    :cond_3c
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->throwFeatureRequestIfSubDecorInstalled()V

    .line 790
    iput-boolean v3, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mOverlayActionMode:Z

    return v3

    .line 797
    :cond_42
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->throwFeatureRequestIfSubDecorInstalled()V

    .line 798
    iput-boolean v3, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mFeatureIndeterminateProgress:Z

    return v3

    .line 793
    :cond_48
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->throwFeatureRequestIfSubDecorInstalled()V

    .line 794
    iput-boolean v3, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mFeatureProgress:Z

    return v3

    .line 801
    :cond_4e
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->throwFeatureRequestIfSubDecorInstalled()V

    .line 802
    iput-boolean v3, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mWindowNoTitle:Z

    return v3
.end method

.method public setContentView(I)V
    .registers 4

    .line 466
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->ensureSubDecor()V

    .line 467
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mSubDecor:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 468
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 469
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 470
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 4

    .line 457
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->ensureSubDecor()V

    .line 458
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mSubDecor:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 459
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 460
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 461
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    .line 475
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->ensureSubDecor()V

    .line 476
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mSubDecor:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 477
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 478
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 479
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public setHandleNativeActionModesEnabled(Z)V
    .registers 2

    .line 1095
    iput-boolean p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mHandleNativeActionModes:Z

    return-void
.end method

.method public setLocalNightMode(I)V
    .registers 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_13

    if-eqz p1, :cond_13

    const/4 v0, 0x1

    if-eq p1, v0, :cond_13

    const/4 v0, 0x2

    if-eq p1, v0, :cond_13

    const-string p1, "AppCompatDelegate"

    const-string v0, "setLocalNightMode() called with an unknown mode"

    .line 2037
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 2027
    :cond_13
    iget v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mLocalNightMode:I

    if-eq v0, p1, :cond_20

    .line 2028
    iput p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mLocalNightMode:I

    .line 2029
    iget-boolean p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mApplyDayNightCalled:Z

    if-eqz p1, :cond_20

    .line 2032
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->applyDayNight()Z

    :cond_20
    :goto_20
    return-void
.end method

.method public setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V
    .registers 5

    .line 338
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_7

    return-void

    .line 343
    :cond_7
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 344
    instance-of v1, v0, Landroid/support/v7/app/WindowDecorActionBar;

    if-nez v1, :cond_41

    const/4 v1, 0x0

    .line 352
    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mMenuInflater:Landroid/view/MenuInflater;

    if-eqz v0, :cond_17

    .line 356
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->onDestroy()V

    :cond_17
    if-eqz p1, :cond_34

    .line 360
    new-instance v0, Landroid/support/v7/app/ToolbarActionBar;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    check-cast v1, Landroid/app/Activity;

    .line 361
    invoke-virtual {v1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mAppCompatWindowCallback:Landroid/view/Window$Callback;

    invoke-direct {v0, p1, v1, v2}, Landroid/support/v7/app/ToolbarActionBar;-><init>(Landroid/support/v7/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V

    .line 362
    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionBar:Landroid/support/v7/app/ActionBar;

    .line 363
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/support/v7/app/ToolbarActionBar;->getWrappedWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    goto :goto_3d

    .line 365
    :cond_34
    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionBar:Landroid/support/v7/app/ActionBar;

    .line 367
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mAppCompatWindowCallback:Landroid/view/Window$Callback;

    invoke-virtual {p1, v0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 370
    :goto_3d
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->invalidateOptionsMenu()V

    return-void

    .line 345
    :cond_41
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 837
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mTitle:Ljava/lang/CharSequence;

    .line 839
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v0, :cond_a

    .line 840
    invoke-interface {v0, p1}, Landroid/support/v7/widget/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_1f

    .line 841
    :cond_a
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->peekSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 842
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->peekSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_1f

    .line 843
    :cond_18
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_1f

    .line 844
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1f
    :goto_1f
    return-void
.end method

.method final shouldAnimateActionModeView()Z
    .registers 2

    .line 1090
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mSubDecorInstalled:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mSubDecor:Landroid/view/ViewGroup;

    if-eqz v0, :cond_10

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
    .registers 4

    if-eqz p1, :cond_30

    .line 905
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionMode:Landroid/support/v7/view/ActionMode;

    if-eqz v0, :cond_9

    .line 906
    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->finish()V

    .line 909
    :cond_9
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;-><init>(Landroid/support/v7/app/AppCompatDelegateImpl;Landroid/support/v7/view/ActionMode$Callback;)V

    .line 911
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 913
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->startActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionMode:Landroid/support/v7/view/ActionMode;

    if-eqz p1, :cond_23

    .line 914
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mAppCompatCallback:Landroid/support/v7/app/AppCompatCallback;

    if-eqz v1, :cond_23

    .line 915
    invoke-interface {v1, p1}, Landroid/support/v7/app/AppCompatCallback;->onSupportActionModeStarted(Landroid/support/v7/view/ActionMode;)V

    .line 919
    :cond_23
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionMode:Landroid/support/v7/view/ActionMode;

    if-nez p1, :cond_2d

    .line 921
    invoke-virtual {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->startSupportActionModeFromWindow(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionMode:Landroid/support/v7/view/ActionMode;

    .line 924
    :cond_2d
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionMode:Landroid/support/v7/view/ActionMode;

    return-object p1

    .line 902
    :cond_30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ActionMode callback can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method startSupportActionModeFromWindow(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
    .registers 9

    .line 936
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->endOnGoingFadeAnimation()V

    .line 937
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionMode:Landroid/support/v7/view/ActionMode;

    if-eqz v0, :cond_a

    .line 938
    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->finish()V

    .line 941
    :cond_a
    instance-of v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;

    if-nez v0, :cond_14

    .line 943
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;-><init>(Landroid/support/v7/app/AppCompatDelegateImpl;Landroid/support/v7/view/ActionMode$Callback;)V

    move-object p1, v0

    .line 947
    :cond_14
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mAppCompatCallback:Landroid/support/v7/app/AppCompatCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mIsDestroyed:Z

    if-nez v2, :cond_22

    .line 949
    :try_start_1d
    invoke-interface {v0, p1}, Landroid/support/v7/app/AppCompatCallback;->onWindowStartingSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v0
    :try_end_21
    .catch Ljava/lang/AbstractMethodError; {:try_start_1d .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    :cond_22
    move-object v0, v1

    :goto_23
    if-eqz v0, :cond_29

    .line 956
    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionMode:Landroid/support/v7/view/ActionMode;

    goto/16 :goto_162

    .line 958
    :cond_29
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_d4

    .line 959
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mIsFloating:Z

    if-eqz v0, :cond_b5

    .line 961
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 962
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 963
    sget v5, Landroid/support/v7/appcompat/R$attr;->actionBarTheme:I

    invoke-virtual {v4, v5, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 966
    iget v5, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_68

    .line 967
    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 968
    invoke-virtual {v5, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 969
    iget v4, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v4, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 971
    new-instance v4, Landroid/support/v7/view/ContextThemeWrapper;

    iget-object v6, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6, v2}, Landroid/support/v7/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 972
    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    goto :goto_6a

    .line 974
    :cond_68
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    .line 977
    :goto_6a
    new-instance v5, Landroid/support/v7/widget/ActionBarContextView;

    invoke-direct {v5, v4}, Landroid/support/v7/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    .line 978
    new-instance v5, Landroid/widget/PopupWindow;

    sget v6, Landroid/support/v7/appcompat/R$attr;->actionModePopupWindowStyle:I

    invoke-direct {v5, v4, v1, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v6, 0x2

    .line 980
    invoke-static {v5, v6}, Landroid/support/v4/widget/PopupWindowCompat;->setWindowLayoutType(Landroid/widget/PopupWindow;I)V

    .line 982
    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModePopup:Landroid/widget/PopupWindow;

    iget-object v6, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 983
    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 985
    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    sget v6, Landroid/support/v7/appcompat/R$attr;->actionBarSize:I

    invoke-virtual {v5, v6, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 987
    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 988
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 987
    invoke-static {v0, v4}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    .line 989
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/ActionBarContextView;->setContentHeight(I)V

    .line 990
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v4, -0x2

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 991
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImpl$6;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AppCompatDelegateImpl$6;-><init>(Landroid/support/v7/app/AppCompatDelegateImpl;)V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mShowActionModePopup:Ljava/lang/Runnable;

    goto :goto_d4

    .line 1022
    :cond_b5
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mSubDecor:Landroid/view/ViewGroup;

    sget v4, Landroid/support/v7/appcompat/R$id;->action_mode_bar_stub:I

    .line 1023
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ViewStubCompat;

    if-eqz v0, :cond_d4

    .line 1026
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 1027
    invoke-virtual {v0}, Landroid/support/v7/widget/ViewStubCompat;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActionBarContextView;

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    .line 1032
    :cond_d4
    :goto_d4
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    if-eqz v0, :cond_162

    .line 1033
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->endOnGoingFadeAnimation()V

    .line 1034
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->killMode()V

    .line 1035
    new-instance v0, Landroid/support/v7/view/StandaloneActionMode;

    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v4}, Landroid/support/v7/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    iget-object v6, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModePopup:Landroid/widget/PopupWindow;

    if-nez v6, :cond_ef

    goto :goto_f0

    :cond_ef
    const/4 v3, 0x0

    :goto_f0
    invoke-direct {v0, v4, v5, p1, v3}, Landroid/support/v7/view/StandaloneActionMode;-><init>(Landroid/content/Context;Landroid/support/v7/widget/ActionBarContextView;Landroid/support/v7/view/ActionMode$Callback;Z)V

    .line 1037
    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Landroid/support/v7/view/ActionMode$Callback;->onCreateActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    if-eqz p1, :cond_160

    .line 1038
    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->invalidate()V

    .line 1039
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ActionBarContextView;->initForMode(Landroid/support/v7/view/ActionMode;)V

    .line 1040
    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionMode:Landroid/support/v7/view/ActionMode;

    .line 1042
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->shouldAnimateActionModeView()Z

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_12a

    .line 1043
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/ActionBarContextView;->setAlpha(F)V

    .line 1044
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 1045
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImpl$7;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AppCompatDelegateImpl$7;-><init>(Landroid/support/v7/app/AppCompatDelegateImpl;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    goto :goto_150

    .line 1064
    :cond_12a
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ActionBarContextView;->setAlpha(F)V

    .line 1065
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    .line 1066
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 1068
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_150

    .line 1069
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 1073
    :cond_150
    :goto_150
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModePopup:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_162

    .line 1074
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mShowActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_162

    .line 1077
    :cond_160
    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionMode:Landroid/support/v7/view/ActionMode;

    .line 1081
    :cond_162
    :goto_162
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionMode:Landroid/support/v7/view/ActionMode;

    if-eqz p1, :cond_16d

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mAppCompatCallback:Landroid/support/v7/app/AppCompatCallback;

    if-eqz v0, :cond_16d

    .line 1082
    invoke-interface {v0, p1}, Landroid/support/v7/app/AppCompatCallback;->onSupportActionModeStarted(Landroid/support/v7/view/ActionMode;)V

    .line 1084
    :cond_16d
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionMode:Landroid/support/v7/view/ActionMode;

    return-object p1
.end method

.method updateStatusGuard(I)I
    .registers 10

    .line 1883
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_a8

    .line 1884
    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_a8

    .line 1885
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    .line 1886
    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1889
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v2}, Landroid/support/v7/widget/ActionBarContextView;->isShown()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_96

    .line 1890
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mTempRect1:Landroid/graphics/Rect;

    if-nez v2, :cond_30

    .line 1891
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mTempRect1:Landroid/graphics/Rect;

    .line 1892
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mTempRect2:Landroid/graphics/Rect;

    .line 1894
    :cond_30
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mTempRect1:Landroid/graphics/Rect;

    .line 1895
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mTempRect2:Landroid/graphics/Rect;

    .line 1896
    invoke-virtual {v2, v1, p1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1898
    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mSubDecor:Landroid/view/ViewGroup;

    invoke-static {v5, v2, v4}, Landroid/support/v7/widget/ViewUtils;->computeFitSystemWindows(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1899
    iget v2, v4, Landroid/graphics/Rect;->top:I

    if-nez v2, :cond_42

    move v2, p1

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    .line 1900
    :goto_43
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v4, v2, :cond_84

    .line 1902
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1904
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mStatusGuard:Landroid/view/View;

    if-nez v2, :cond_73

    .line 1905
    new-instance v2, Landroid/view/View;

    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mStatusGuard:Landroid/view/View;

    .line 1906
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroid/support/v7/appcompat/R$color;->abc_input_method_navigation_guard:I

    .line 1907
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 1906
    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1908
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mSubDecor:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mStatusGuard:Landroid/view/View;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v6, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_82

    .line 1912
    :cond_73
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1913
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v4, p1, :cond_82

    .line 1914
    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1915
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_82
    :goto_82
    const/4 v2, 0x1

    goto :goto_85

    :cond_84
    const/4 v2, 0x0

    .line 1922
    :goto_85
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mStatusGuard:Landroid/view/View;

    if-eqz v4, :cond_8a

    goto :goto_8b

    :cond_8a
    const/4 v3, 0x0

    .line 1928
    :goto_8b
    iget-boolean v4, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mOverlayActionMode:Z

    if-nez v4, :cond_92

    if-eqz v3, :cond_92

    const/4 p1, 0x0

    :cond_92
    move v7, v3

    move v3, v2

    move v2, v7

    goto :goto_a0

    .line 1933
    :cond_96
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v2, :cond_9e

    .line 1935
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/4 v2, 0x0

    goto :goto_a0

    :cond_9e
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_a0
    if-eqz v3, :cond_a9

    .line 1939
    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/ActionBarContextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_a9

    :cond_a8
    const/4 v2, 0x0

    .line 1943
    :cond_a9
    :goto_a9
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mStatusGuard:Landroid/view/View;

    if-eqz v0, :cond_b5

    if-eqz v2, :cond_b0

    goto :goto_b2

    :cond_b0
    const/16 v1, 0x8

    .line 1944
    :goto_b2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_b5
    return p1
.end method
