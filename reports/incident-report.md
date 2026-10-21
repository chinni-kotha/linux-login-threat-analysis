# Linux Authentication Investigation Report

## Scope
Beginner cybersecurity lab using seven synthetic SSH authentication
events. These events do not represent a real attack.

## Findings
- Five failed login attempts targeted the invalid username admin.
- All five failures originated from 192.0.2.50.
- Failures occurred between 10:00:01 and 10:00:17.
- At 10:01:00, the same IP successfully authenticated as analyst.
- A separate successful login from 192.0.2.10 occurred at 10:05:00.

## Assessment
Repeated failures followed by a successful login from the same IP
are suspicious and warrant investigation. The successful login used
a different username, so these logs alone do not establish that an
account was compromised.

## Recommended Investigation
1. Verify whether the analyst login was authorized.
2. Check whether the source IP belongs to an expected user or system.
3. Review commands, processes, and other activity after the login.
4. Check other authentication logs for similar patterns.

## Possible Security Improvements
- Use SSH keys and disable password authentication where appropriate.
- Restrict SSH access to approved networks.
- Consider login rate limiting and alerts for repeated failures.
- If unauthorized access is confirmed, follow the incident response
  process to contain the affected system and secure exposed credentials.

## Evidence
- logs/auth-sample.log
- evidence/suspicious-ip-timeline.txt
- reports/login-analysis.txt

## Limitations
The dataset is small and synthetic. The script summarizes this sample
and displays a preselected IP; it does not automatically detect attacks,
correlate events within time windows, or monitor live systems.
