.class public Lcom/android/stk/StkAppService;
.super Landroid/app/Service;
.source "StkAppService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stk/StkAppService$1;,
        Lcom/android/stk/StkAppService$ServiceHandler;,
        Lcom/android/stk/StkAppService$InitiatedByUserAction;
    }
.end annotation


# static fields
.field static sInstance:Lcom/android/stk/StkAppService;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandlerThread:[Landroid/os/HandlerThread;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPhoneCount:I

.field private volatile mServiceHandler:[Lcom/android/stk/StkAppService$ServiceHandler;

.field private mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

.field private mUiccController:Lcom/codeaurora/telephony/msim/MSimUiccController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    sput-object v0, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 94
    iput-object v1, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    .line 95
    iput-object v1, p0, Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/stk/StkAppService;->mPhoneCount:I

    .line 98
    iput-object v1, p0, Lcom/android/stk/StkAppService;->mUiccController:Lcom/codeaurora/telephony/msim/MSimUiccController;

    .line 326
    return-void
.end method

.method static synthetic access$100(Lcom/android/stk/StkAppService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/stk/StkAppService;)Landroid/app/NotificationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/stk/StkAppService;)[Lcom/android/internal/telephony/cat/AppInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/stk/StkAppService;)Lcom/codeaurora/telephony/msim/MSimUiccController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mUiccController:Lcom/codeaurora/telephony/msim/MSimUiccController;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/stk/StkAppService;Lcom/codeaurora/telephony/msim/MSimUiccController;)Lcom/codeaurora/telephony/msim/MSimUiccController;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/stk/StkAppService;->mUiccController:Lcom/codeaurora/telephony/msim/MSimUiccController;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/stk/StkAppService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->updateCatService(I)V

    return-void
.end method

.method static getInstance()Lcom/android/stk/StkAppService;
    .locals 1

    .prologue
    .line 312
    sget-object v0, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    return-object v0
.end method

.method private updateCatService(I)V
    .locals 2
    .parameter "slotId"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mUiccController:Lcom/codeaurora/telephony/msim/MSimUiccController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mUiccController:Lcom/codeaurora/telephony/msim/MSimUiccController;

    invoke-virtual {v0, p1}, Lcom/codeaurora/telephony/msim/MSimUiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 262
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mUiccController:Lcom/codeaurora/telephony/msim/MSimUiccController;

    invoke-virtual {v0, p1}, Lcom/codeaurora/telephony/msim/MSimUiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    check-cast v0, Lcom/codeaurora/telephony/msim/MSimUiccCard;

    check-cast v0, Lcom/codeaurora/telephony/msim/MSimUiccCard;

    invoke-virtual {v0}, Lcom/codeaurora/telephony/msim/MSimUiccCard;->getCatService()Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    aput-object v0, v1, p1

    .line 265
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CatService instance for subscription "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " For card : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mUiccController:Lcom/codeaurora/telephony/msim/MSimUiccController;

    invoke-virtual {v1, p1}, Lcom/codeaurora/telephony/msim/MSimUiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method private updateCatServiceAndInitHandlerThread()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 239
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    invoke-static {}, Lcom/codeaurora/telephony/msim/MSimUiccController;->getInstance()Lcom/codeaurora/telephony/msim/MSimUiccController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/stk/StkAppService;->mUiccController:Lcom/codeaurora/telephony/msim/MSimUiccController;

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UiccController GetInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mUiccController:Lcom/codeaurora/telephony/msim/MSimUiccController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/stk/StkAppService;->mPhoneCount:I

    if-ge v0, v1, :cond_1

    .line 244
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mHandlerThread:[Landroid/os/HandlerThread;

    new-instance v2, Landroid/os/HandlerThread;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ServiceHandler"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v0

    .line 245
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mHandlerThread:[Landroid/os/HandlerThread;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 247
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mServiceHandler:[Lcom/android/stk/StkAppService$ServiceHandler;

    new-instance v2, Lcom/android/stk/StkAppService$ServiceHandler;

    iget-object v3, p0, Lcom/android/stk/StkAppService;->mHandlerThread:[Landroid/os/HandlerThread;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0}, Lcom/android/stk/StkAppService$ServiceHandler;-><init>(Lcom/android/stk/StkAppService;Landroid/os/Looper;I)V

    aput-object v2, v1, v0

    .line 249
    invoke-direct {p0, v0}, Lcom/android/stk/StkAppService;->updateCatService(I)V

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 252
    .end local v0           #i:I
    :cond_0
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    invoke-static {}, Lcom/android/internal/telephony/cat/CatService;->getInstance()Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v2

    aput-object v2, v1, v4

    .line 253
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mHandlerThread:[Landroid/os/HandlerThread;

    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "ServiceHandler"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v4

    .line 254
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mHandlerThread:[Landroid/os/HandlerThread;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 255
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mServiceHandler:[Lcom/android/stk/StkAppService$ServiceHandler;

    new-instance v2, Lcom/android/stk/StkAppService$ServiceHandler;

    iget-object v3, p0, Lcom/android/stk/StkAppService;->mHandlerThread:[Landroid/os/HandlerThread;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3, v4}, Lcom/android/stk/StkAppService$ServiceHandler;-><init>(Lcom/android/stk/StkAppService;Landroid/os/Looper;I)V

    aput-object v2, v1, v4

    .line 257
    :cond_1
    return-void
.end method

.method private waitForLooper()V
    .locals 2

    .prologue
    .line 316
    :goto_0
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mServiceHandler:[Lcom/android/stk/StkAppService$ServiceHandler;

    if-nez v0, :cond_0

    .line 317
    monitor-enter p0

    .line 319
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 320
    :catch_0
    move-exception v0

    goto :goto_1

    .line 324
    :cond_0
    return-void
.end method


# virtual methods
.method getMenu(I)Lcom/android/internal/telephony/cat/Menu;
    .locals 2
    .parameter "slotId"

    .prologue
    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Menu on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " selected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mServiceHandler:[Lcom/android/stk/StkAppService$ServiceHandler;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/stk/StkAppService$ServiceHandler;->getMainMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v0

    return-object v0
.end method

.method indicateMenuVisibility(ZI)V
    .locals 1
    .parameter "visibility"
    .parameter "slotId"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mServiceHandler:[Lcom/android/stk/StkAppService$ServiceHandler;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Lcom/android/stk/StkAppService$ServiceHandler;->indicateMenuVisibility(Z)V

    .line 290
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 282
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 170
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v0

    iput v0, p0, Lcom/android/stk/StkAppService;->mPhoneCount:I

    .line 171
    iget v0, p0, Lcom/android/stk/StkAppService;->mPhoneCount:I

    new-array v0, v0, [Lcom/android/internal/telephony/cat/AppInterface;

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    .line 172
    iget v0, p0, Lcom/android/stk/StkAppService;->mPhoneCount:I

    new-array v0, v0, [Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mHandlerThread:[Landroid/os/HandlerThread;

    .line 173
    iget v0, p0, Lcom/android/stk/StkAppService;->mPhoneCount:I

    new-array v0, v0, [Lcom/android/stk/StkAppService$ServiceHandler;

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mServiceHandler:[Lcom/android/stk/StkAppService$ServiceHandler;

    .line 175
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->updateCatServiceAndInitHandlerThread()V

    .line 177
    invoke-virtual {p0}, Lcom/android/stk/StkAppService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    .line 178
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 180
    sput-object p0, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    .line 181
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->waitForLooper()V

    .line 272
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/stk/StkAppService;->mPhoneCount:I

    if-ge v0, v1, :cond_1

    .line 273
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mHandlerThread:[Landroid/os/HandlerThread;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 274
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mHandlerThread:[Landroid/os/HandlerThread;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 272
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 277
    :cond_1
    const/4 v1, 0x0

    sput-object v1, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    .line 278
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 7
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->waitForLooper()V

    .line 189
    if-nez p1, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 195
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 199
    const-string v5, "slot_id"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 201
    .local v3, slotId:I
    iget-object v5, p0, Lcom/android/stk/StkAppService;->mServiceHandler:[Lcom/android/stk/StkAppService$ServiceHandler;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lcom/android/stk/StkAppService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 202
    .local v2, msg:Landroid/os/Message;
    const-string v5, "op"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Landroid/os/Message;->arg1:I

    .line 203
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "called on slot:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    iget v5, v2, Landroid/os/Message;->arg1:I

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 207
    :pswitch_1
    const-string v5, "cmd message"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    iput-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 234
    :cond_2
    :goto_1
    :pswitch_2
    iget-object v5, p0, Lcom/android/stk/StkAppService;->mServiceHandler:[Lcom/android/stk/StkAppService$ServiceHandler;

    aget-object v5, v5, v3

    invoke-virtual {v5, v2}, Lcom/android/stk/StkAppService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 212
    :pswitch_3
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    .line 219
    :pswitch_4
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 222
    :pswitch_5
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget v5, p0, Lcom/android/stk/StkAppService;->mPhoneCount:I

    if-ge v1, v5, :cond_2

    .line 223
    if-eq v1, v3, :cond_3

    iget-object v5, p0, Lcom/android/stk/StkAppService;->mServiceHandler:[Lcom/android/stk/StkAppService$ServiceHandler;

    aget-object v5, v5, v1

    if-eqz v5, :cond_3

    .line 224
    iget-object v5, p0, Lcom/android/stk/StkAppService;->mServiceHandler:[Lcom/android/stk/StkAppService$ServiceHandler;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/android/stk/StkAppService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    .line 225
    .local v4, tmpmsg:Landroid/os/Message;
    iget v5, v2, Landroid/os/Message;->arg1:I

    iput v5, v4, Landroid/os/Message;->arg1:I

    .line 226
    iget-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 227
    iget-object v5, p0, Lcom/android/stk/StkAppService;->mServiceHandler:[Lcom/android/stk/StkAppService$ServiceHandler;

    aget-object v5, v5, v1

    invoke-virtual {v5, v4}, Lcom/android/stk/StkAppService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 222
    .end local v4           #tmpmsg:Landroid/os/Message;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 205
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method setDisplayTextDlgVisibility(ZI)V
    .locals 1
    .parameter "visibility"
    .parameter "slotId"

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mServiceHandler:[Lcom/android/stk/StkAppService$ServiceHandler;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Lcom/android/stk/StkAppService$ServiceHandler;->setDisplayTextDlgVisibility(Z)V

    .line 297
    return-void
.end method
