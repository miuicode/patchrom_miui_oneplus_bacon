.class abstract Lcom/android/stk/StkAppInstaller;
.super Ljava/lang/Object;
.source "StkAppInstaller.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static install(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "slotId"

    .prologue
    .line 35
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/android/stk/StkAppInstaller;->setAppState(Landroid/content/Context;ZI)V

    .line 36
    return-void
.end method

.method private static setAppState(Landroid/content/Context;ZI)V
    .locals 8
    .parameter "context"
    .parameter "install"
    .parameter "slotId"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 43
    if-nez p0, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 47
    .local v3, pm:Landroid/content/pm/PackageManager;
    if-eqz v3, :cond_0

    .line 51
    const/4 v6, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "com.android.stk.StkLauncherActivity"

    aput-object v7, v2, v6

    const-string v6, "com.android.stk.StkLauncherActivity2"

    aput-object v6, v2, v4

    const-string v6, "com.android.stk.StkLauncherActivity3"

    aput-object v6, v2, v5

    .line 57
    .local v2, launcherActivity:[Ljava/lang/String;
    new-instance v0, Landroid/content/ComponentName;

    const-string v6, "com.android.stk"

    aget-object v7, v2, p2

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .local v0, cName:Landroid/content/ComponentName;
    if-eqz p1, :cond_2

    .line 64
    .local v4, state:I
    :goto_1
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v3, v0, v4, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v1

    .line 67
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "StkAppInstaller"

    const-string v6, "Could not change STK app state"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #state:I
    :cond_2
    move v4, v5

    .line 60
    goto :goto_1
.end method

.method static unInstall(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "slotId"

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/stk/StkAppInstaller;->setAppState(Landroid/content/Context;ZI)V

    .line 40
    return-void
.end method
