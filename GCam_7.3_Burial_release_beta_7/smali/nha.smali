.class final synthetic Lnha;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lnhc;


# direct methods
.method public constructor <init>(Lnhc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnha;->a:Lnhc;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lnha;->a:Lnhc;

    invoke-virtual {v0}, Lnhc;->a()V

    return-void
.end method
