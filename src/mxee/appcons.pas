unit appcons;

{$H+}

interface
function appcons_gethelp():String;

implementation

function appcons_gethelp():String;
var
res:String;
begin
    res := '' +
        'VGFibGUgb2YgQ29udGVudHMKX19fX19fX19fX19fX19fX18KCjEuIG14ZWUgQ0Ug' + chr(10) + 
        'LSBPZmZsaW5lIEhlbHAKMi4gSW50cm9kdWN0aW9uCi4uIDEuIFdoYXQgaXMgaXQK' + chr(10) + 
        'Li4gMi4gV2h5IHVzZSBpdAouLiAzLiBIb3cgZG9lcyBpdCB3b3JrCjMuIFR5cGlj' + chr(10) + 
        'YWwgU2V0dXAKLi4gMS4gUHJlcmVxdWlzaXRlcwouLiAyLiBEb3dubG9hZCBhbmQg' + chr(10) + 
        'U3RhcnQKNC4gQXBwZW5kaXgKLi4gMS4gV3JpdGluZyBFeHRlbnNpb25zCi4uIDIu' + chr(10) + 
        'IEZBUQouLi4uLiAxLiBROiBIZWxwISBYWVogaXMgbm90IHdvcmtpbmcKLi4gMy4g' + chr(10) + 
        'VmVyc2lvbiBIaXN0b3J5CgoKUmVsZWFzZSAwLjAuMQoKCjEgbXhlZSBDRSAtIE9m' + chr(10) + 
        'ZmxpbmUgSGVscAo9PT09PT09PT09PT09PT09PT09PT09PT0KCgoyIEludHJvZHVj' + chr(10) + 
        'dGlvbgo9PT09PT09PT09PT09PQoKMi4xIFdoYXQgaXMgaXQKfn5+fn5+fn5+fn5+' + chr(10) + 
        'fn4KCiAgSWYgeW91IGRvIHNvZnR3YXJlIGRldmVsb3BtZW50IGZvciBhIGNvbXBh' + chr(10) + 
        'bnkgb24gYSBjb21wYW55IG1hbmFnZWQKICBtYWNib29rIG9yIGV2ZW4gb24gYSBw' + chr(10) + 
        'cml2YXRlIGhhcmR3YXJlIGl0IGlzIGFsd2F5cyBraW5kIG9mIHRoZSBzYW1lCiAg' + chr(10) + 
        'c3R1ZmYgdG8gZG8uIE5vdCBvbmx5IGZvciB5b3Vyc2VsZiBidXQgYWxzbyBmb3Ig' + chr(10) + 
        'eW91ciBjb2xsZWd1ZXMuCgogIFlvdSBjYW4gc2NyaXB0IHRoZXNlIHRoaW5ncywg' + chr(10) + 
        'b3IgaGFjayB0aGVtIGludG8geW91ciBhbnNpYmxlCiAgbWFuYWdlbWVudCwgb3Ig' + chr(10) + 
        'anVzdCBydW4gdGhlbSBhbGwgYnkgdHlwaW5nIGNvbW1hbmQgYWZ0ZXIgY29tbWFu' + chr(10) + 
        'ZC4gSW4KICB0aGUgZW5kIHRvIG1lIGl0IGhhcyBiZWVuIGFsd2F5cyB0aGUgc2Ft' + chr(10) + 
        'ZS4KCiAgLSBJbnN0YWxsaW5nIEhvbWVCcmV3CiAgLSBJbnN0YWxsaW5nIG15IHBl' + chr(10) + 
        'cnNvbmFsIFB5dGhvbiBWaXJ0dWFsZW52IGluIH4vdmVudgogIC0gSW5zdGFsbGlu' + chr(10) + 
        'ZyBteSBJREUocykKICAtIFNldHRpbmcgdXAgdGhlIHRvb2xjaGFpbihzKSB3aXRo' + chr(10) + 
        'IGNyZWRlbnRpYWxzLCBzc2gsIGdwZywgZXRjLgogIC0gSW5zdGFsbCBhbGwgdGhl' + chr(10) + 
        'IGZhbmN5IGhlbHBlciBzY3JpcHRzIGFjY3VtdWxhdGVkIG92ZXIgdGltZSBzb21l' + chr(10) + 
        'd2hlcmUKICAgIGluIHlvdXIgfi9iaW4gb3IgUEFUSAogIC0gS2VlcCBldmVyeXRo' + chr(10) + 
        'aW5nIHVwIHRvIGRhdGUKCgoyLjIgV2h5IHVzZSBpdAp+fn5+fn5+fn5+fn5+fgoK' + chr(10) + 
        'ICBJIHJlYWxseSBkbyBub3QgbGlrZSB0aGUgbWFudWFsLCByZXBldGl0aXZlIGlu' + chr(10) + 
        'dGVyYWN0aW9uLiBBbmQgSSBkb24ndAogIGxpa2UgdGhhdCBldmVyeSBjb2xsZWd1' + chr(10) + 
        'ZSAodW5pbnRlbnRpb25hbGx5KSBkb2VzIHNvbWV0aGluZyBpbiBhIGxpdHRsZQog' + chr(10) + 
        'IGRpZmZlcmVudCB3YXkuIEl0J3MganVzdCBhIHdhc3RlIG9mIHRpbWUgbm90IGdv' + chr(10) + 
        'aW5nIGZ1bGwgYXV0byBvbiB0aGlzLgoKICBTbyB0aGlzIGlzIG15IGF0dGVtcHQg' + chr(10) + 
        'dG8ga2luZCBvZiBzdGFuZGFyLWhhY2stZGl6ZSBpdC4gSWYgdGhhdCBtYWtlcwog' + chr(10) + 
        'IHNlbnNlLiBUaGVyZSBpcyBubyBtYWdpYy4gVGhlIHNvdXJjZSBjb2RlIHNob3Vs' + chr(10) + 
        'ZCBiZSBhdmFpbGFibGUgb24KICBHaXRIdWIgYW5kIFB5UEkuIFlvdSBzaG91bGQg' + chr(10) + 
        'YWx3YXlzIGJlIGFibGUgdG8gcnVuIGV2ZXJ5dGhpbmcgb24geW91cgogIG93biwg' + chr(10) + 
        'YnkgaGFuZC4gQ29uc2lkZXIgdGhpcyBhcyBraW5kIG9mIGEgcHJlY29tcGlsZWQg' + chr(10) + 
        'ZG9jdW1lbnRhdGlvbiBmb3IKICBteSB3b3Jrc3RhdGlvbiBzZXR1cC4gTWF5YmUg' + chr(10) + 
        'aXQgdHVybnMgb3V0IHVzZWZ1bCB0byB5b3UuCgogIEJlIGFkdmlzZWQgbW9zdCBv' + chr(10) + 
        'ZiB0aGlzIHN0dWZmIHRhcmdldHMgb3BlbiBzb3VyY2UgdGVjaG5vbG9neSBhbmQg' + chr(10) + 
        'eW91cgogIG93biB0b29scyB3cml0dGVuIGluIFB5dGhvbi4gU28gaWYgeW91J3Jl' + chr(10) + 
        'IGEgc3RhbmRhcmQgeGNvZGUgbWFjCiAgZGV2ZWxvcGVyIHRoaXMgaXMgbWF5YmUg' + chr(10) + 
        'bm90IHdoYXQgeW91IGFyZSBsb29raW5nIGZvci4KCgoyLjMgSG93IGRvZXMgaXQg' + chr(10) + 
        'd29yawp+fn5+fn5+fn5+fn5+fn5+fn5+fgoKICBNWEVFIGEgZmFpcmx5IHNtYWxs' + chr(10) + 
        'IHVpIGFwcGxpY2F0aW9uIGZvciBNYWNvcyB0aGF0IHNob3VsZCBoZWxwIHlvdQog' + chr(10) + 
        'IHNldHRpbmdzIHRoaW5ncyB1cC4gWW91IGNhbiBydW4gaXQgd2l0aG91dCBhbnkg' + chr(10) + 
        'cHJlcGFyYXRpb24uIFlvdSBzaG91bGQKICBiZSBhYmxlIHRvIHNldCBldmVyeXRo' + chr(10) + 
        'aW5nIHVwIG9uY2Ugc3RhcnRlZC4gVGFrZSBhIGxvb2sgYXQgdGhlIG5leHQKICBz' + chr(10) + 
        'ZWN0aW9uIGZvciBhIGNvbXBsZXRlIHN0ZXAgYnkgc3RlcCBkZXNjcmlwdGlvbi4g' + chr(10) + 
        'SSBndWVzcyB0aGUgdWkgaXMgbm90CiAgcmVhbGx5IG5pY2UgYW5kIG1heWJlIG5v' + chr(10) + 
        'dCByZWFsbHkgc2VsZi1leHBsYW5pbmcsIHNvcnJ5LgoKICBTbyBoZXJlJ3MgdGhl' + chr(10) + 
        'IG92ZXJ2aWV3IG9mIGNvbXBvbmVudHMgb3IgdGhlIHBhcnRzIG9mIHlvdXIKICBp' + chr(10) + 
        'bnN0YWxsYXRpb246CgogIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t' + chr(10) + 
        'LS0tLS0tLS0tLS0tLS0tLS0tLS0KICAgMSAgTVhFRSB1aSBhcHAgICAgWW91IGRv' + chr(10) + 
        'd25sb2FkZWQgdGhpcyBmcm9tIGdpdGh1YiAgCiAgICAgICAgICAgICAgICAgICAg' + chr(10) + 
        'IHdpdGggYSBzaXplIG9mIHJvdWdobHkgMTUgTUIgICAgIAogIC0tLS0tLS0tLS0t' + chr(10) + 
        'LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KICAgMiAg' + chr(10) + 
        'YH4vLm14ZWUuaW5pJyAgT25jZSB5b3UndmUgc3RhcnRlZCBNWEVFIHRoaXMgICAg' + chr(10) + 
        'CiAgICAgICAgICAgICAgICAgICAgIGZpbGUgd2lsbCBiZSBnZW5lcmF0ZWQgd2l0' + chr(10) + 
        'aCB5b3VyIAogICAgICAgICAgICAgICAgICAgICBiYXNlIGNvbmZpZ3VyYXRpb24g' + chr(10) + 
        'ICAgICAgICAgICAgICAKICAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t' + chr(10) + 
        'LS0tLS0tLS0tLS0tLS0tLS0tLS0tCiAgIDMgIEhvbWVCcmV3ICAgICAgIEEgc3lz' + chr(10) + 
        'dGVtLXdpZGUgaW5zdGFsbGF0aW9uIG9mICAgIAogICAgICAgICAgICAgICAgICAg' + chr(10) + 
        'ICBob21lYnJldyB3aWxsIGJlIG1hZGUgaW50byAgICAgICAKICAgICAgICAgICAg' + chr(10) + 
        'ICAgICAgICAgYC9vcHQvaG9tZWJyZXcnICAgICAgICAgICAgICAgICAgCiAgLS0t' + chr(10) + 
        'LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t' + chr(10) + 
        'LQogICA0ICBQeXRob24zICAgICAgICBUaGUgSG9tZUJyZXcgZGVmYXVsdCBQeXRo' + chr(10) + 
        'b24zICAgICAKICAgICAgICAgICAgICAgICAgICAgaW5jbHVkaW5nIHRoZSBgdmVu' + chr(10) + 
        'dicgbW9kdWxlIHdpbGwgCiAgICAgICAgICAgICAgICAgICAgIGJlIGluc3RhbGxl' + chr(10) + 
        'ZCBnbG9iYWxseSAgICAgICAgICAgIAogIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t' + chr(10) + 
        'LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KICAgNSAgYH4vdmVudicgICAg' + chr(10) + 
        'ICAgSW4geW91ciB1c2VyJ3MgaG9tZSB0aGUgdG9wICAgICAgCiAgICAgICAgICAg' + chr(10) + 
        'ICAgICAgICAgIGRpcmVjdG9yeSBgdmVudicgd2lsbCBiZSAgICAgICAgIAogICAg' + chr(10) + 
        'ICAgICAgICAgICAgICAgICBpbml0aWFsaXplZCB3aXRoIGEgcHJlc2V0ICAgICAg' + chr(10) + 
        'ICAKICAgICAgICAgICAgICAgICAgICAgb2YgbGlicmFyaWVzIGZyb20gUHlQSSAg' + chr(10) + 
        'ICAgICAgICAgCiAgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t' + chr(10) + 
        'LS0tLS0tLS0tLS0tLS0tLQogICA2ICBFeHRlbnNpb25zICAgICBFeHRlbmQgTVhF' + chr(10) + 
        'RSB3aXRoIHlvdXIgb3duICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgY29t' + chr(10) + 
        'cGFueSBzcGVjaWZpYyBleHRlbnNpb25zICAgICAgCiAgICAgICAgICAgICAgICAg' + chr(10) + 
        'ICAgIHdyaXR0ZW4gaW4gUHl0aG9uICAgICAgICAgICAgICAgIAogICAgICAgICAg' + chr(10) + 
        'ICAgICAgICAgICAoc2VlIGBXcml0aW5nIEV4dGVuc2lvbnMnICAgICAgICAKICAg' + chr(10) + 
        'ICAgICAgICAgICAgICAgICAgc2VjdGlvbiBpbiBBcHBlbmRpeCBmb3IgZGV0YWls' + chr(10) + 
        'cykgCiAgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t' + chr(10) + 
        'LS0tLS0tLS0tLQoKCjMgVHlwaWNhbCBTZXR1cAo9PT09PT09PT09PT09PT0KCjMu' + chr(10) + 
        'MSBQcmVyZXF1aXNpdGVzCn5+fn5+fn5+fn5+fn5+fn5+CgoKMy4yIERvd25sb2Fk' + chr(10) + 
        'IGFuZCBTdGFydAp+fn5+fn5+fn5+fn5+fn5+fn5+fn5+CgogIFlvdSBoYXZlIG1h' + chr(10) + 
        'bmFnZWQgdGhhdCBhbHJlYWR5IEkgZ3Vlc3MuCgoKNCBBcHBlbmRpeAo9PT09PT09' + chr(10) + 
        'PT09Cgo0LjEgV3JpdGluZyBFeHRlbnNpb25zCn5+fn5+fn5+fn5+fn5+fn5+fn5+' + chr(10) + 
        'fn4KCgo0LjIgRkFRCn5+fn5+fn4KCjQuMi4xIFE6IEhlbHAhIFhZWiBpcyBub3Qg' + chr(10) + 
        'd29ya2luZwotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KCiAgQTog' + chr(10) + 
        'SXQgaXMgYSBiZXN0IGVmZm9ydCBwcm9qZWN0IHVuZGVyIEJTRCBMaWNlbnNlLiBI' + chr(10) + 
        'YXZlIG5vIGV4cGVjdGF0aW9ucwogIGFuZCB2aXNpdCA8aHR0cHM6Ly9naXRodWIu' + chr(10) + 
        'Y29tL3R1cmJvLWJlcnQvbXhlZS9pc3N1ZXM+CgoKNC4zIFZlcnNpb24gSGlzdG9y' + chr(10) + 
        'eQp+fn5+fn5+fn5+fn5+fn5+fn5+CgogIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t' + chr(10) + 
        'LS0tLS0tLS0tLS0tLS0tCiAgIFZlcnNpb24gIFJlbGVhc2UgRGF0ZSAgTm90ZXMg' + chr(10) + 
        'IEVycmF0YSAKICAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t' + chr(10) + 
        'LQogICAgIDAuMC4xICAgIDIwMjQtMDktMDEgICAgICAgICAgICAgICAgCiAgLS0t' + chr(10) + 
        'LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0K' + chr(10) + 
        '';
    appcons_gethelp := res;
end;

begin
end.

